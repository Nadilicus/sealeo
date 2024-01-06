#!/bin/python3

import time
import lichess.api
import subprocess

id = 'doxeno'

while 1: 

    if not lichess.api.user(id)['playing']:
        sleep(600)
    else:
        last = []
        while lichess.api.user(id)['playing']:

            cur = lichess.api.current_game(id)['moves'].split()
            change = [cur[i] for i in range(len(last), len(cur))]
            m = False
            for move in change:
                if move[0:2] == 'Qx':
                    m = True
            if m:
                subprocess.call("./logo.jpg")

            time.sleep(10)
            last = cur
