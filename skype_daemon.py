#!/bin/python3

import time
import lichess.api
import subprocess

id = "Nadilicus"
while 1:
    if not list(lichess.api.users_status([id]))[0]["playing"]:
        time.sleep(600)
    else:
        last = []
        while list(lichess.api.users_status([id]))[0]["playing"]:
            current_moves = lichess.api.current_game(id)["moves"].split()
            new_moves = [current_moves[i] for i in range(len(last), len(current_moves))]
            m = False
            for move in new_moves:
                if move[0:2] == "Qx":
                    m = True
            if m:
                subprocess.call("./logo.jpg")

            time.sleep(10)
            last = current_moves