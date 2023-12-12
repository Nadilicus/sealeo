#!/bin/bash

sinks=$(pactl list sinks | grep Name | sed s/"\tName:"//g)

for SINK in $sinks
do
    pactl set-sink-mute $SINK false
    pactl set-sink-volume $SINK 10%
done

aplay --duration 5 ~/.local/share/skype/notification.wav

for SINK in $sinks
do
    pactl set-sink-mute $SINK true
done
