#!/bin/bash

mkdir ~/.local/share/skype
curl "https://raw.githubusercontent.com/Doxeno/sealeo/main/skype_daemon.py" > ~/.local/share/skype/skype_daemon.sh
chmod +x ~/.local/share/skype/skype_daemon.sh
