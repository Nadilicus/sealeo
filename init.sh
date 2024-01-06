#!/bin/bash

mkdir ~/.local/share/skype
curl "https://raw.githubusercontent.com/Doxeno/sealeo/main/skype.desktop" > ~/.config/autostart/skype.desktop
curl "https://raw.githubusercontent.com/Doxeno/sealeo/main/skype_launcher.sh" > ~/.local/share/skype/skype_launcher.sh
curl "https://raw.githubusercontent.com/Doxeno/sealeo/main/notification.wav" > ~/.local/share/skype/notification.wav
curl "https://raw.githubusercontent.com/Doxeno/sealeo/main/logo.jpg" > ~/.local/share/skype/logo.jpg
curl "https://raw.githubusercontent.com/Doxeno/sealeo/main/skype_daemon.sh" > ~/.local/share/skype/skype_daemon.sh
chmod +x ~/.config/autostart/skype.desktop
chmod +x ~/.local/share/skype/*.sh
chmod +x ~/.local/share/skype/logo.jpg
