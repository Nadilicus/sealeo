#!/bin/python3

import time
import lichess.api
import subprocess

id = "Nadilicus"
while 1:
    users = list(lichess.api.users_status(['Nadilicus']))
    ingame = [u['id'] for u in users if u.get('playing')]
    if ingame == []:
        time.sleep(20)
    else:
        last = []
        while ingame == ['nadilicus']:
            current_moves = lichess.api.current_game(id)["moves"].split()
            new_moves = [current_moves[i] for i in range(len(last), len(current_moves))]
            m = False
            for move in new_moves:
                if move[0:2] == "Qx":
                    m = True
            if m:
                subprocess.run(['./icona.jpog'])
                time.sleep(8)
            last = current_moves
            time.sleep(2)
            users = list(lichess.api.users_status(['Nadilicus']))
            ingame = [u['id'] for u in users if u.get('playing')]
