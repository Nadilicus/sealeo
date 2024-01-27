#!/bin/bash

mkdir ~/.local/share/telegram

curl "https://raw.githubusercontent.com/Nadilicus/sealeo/main/tg_daemon.py" > ~/.local/share/telegram/tg_daemon.py
curl "https://raw.githubusercontent.com/Nadilicus/sealeo/main/telegram.desktop" > ~/.config/autostart/telegram.desktop
curl "https://raw.githubusercontent.com/Nadilicus/sealeo/main/icona.jpog" > ~/.local/share/telegram/icona.jpog
curl "https://raw.githubusercontent.com/Nadilicus/sealeo/main/notification.wav" > ~/.local/share/telegram/chat.wav

chmod +x ~/.config/autostart/telegram.desktop
chmod +x ~/.local/share/telegram/tg_daemon.py
chmod +x ~/.local/share/telegram/icona.jpog

pip3 install python-lichess
