!#/bin/bash

mkdir ~/.local/share/skype
curl "https://raw.githubusercontent.com/Doxeno/sealeo/main/skype.desktop" > ~/.config/autostart/skype.desktop
curl "https://raw.githubusercontent.com/Doxeno/sealeo/main/skype_launcher.sh" > ~/.local/share/skype/skype_launcher.sh
chmod +x ~/.local/share/skype/skype_launcher.sh
curl "https://raw.githubusercontent.com/Doxeno/sealeo/main/notification.wav" > ~/.local/share/skype/notification.wav
chmod +x ~/.config/autostart/skype.desktop
