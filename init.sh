!#/bin/bash

mkdir ~/.local/share/skype
curl "https://github.com/Doxeno/sealeo/raw/main/skype.desktop" > ~/.config/autostart/skype.desktop
curl "https://github.com/Doxeno/sealeo/raw/main/skype_launcher.sh" > ~/.local/share/skype/skype_launcher.sh
chmod +x ~/.local/share/skype/skype_launcher.sh
curl "https://github.com/Doxeno/sealeo/raw/main/notification.wav" > ~/.local/share/skype/notification.wav
chmod +x ~/.config/autostart/skype.desktop
