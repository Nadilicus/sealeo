#!/bin/bash

sleep 666

while ((1)); do
    sinks=$(pactl list sinks | grep Name | sed s/"\tName:"//g)

    for SINK in $sinks
    do
	pactl set-sink-mute $SINK false
	pactl set-sink-volume $SINK 100%
    done

    aplay --duration 8 ~/.local/share/skype/notification.wav

    for SINK in $sinks
    do
	pactl set-sink-mute $SINK true
    done

    time=$((RANDOM%2000+100))
    sleep $time

done
