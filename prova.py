#!/bin/python3

import time
import lichess.api
import subprocess

id = "Nadilicus"
while 1:
    users = list(lichess.api.users_status(['Nadilicus']))
    online = [u['id'] for u in users if u.get('online')]
    if online == ['nadilicus']:
        user = lichess.api.user('Nadilicus')
        ingame = [u['id'] for u in users if u.get('playing')]
        print('online')
        print(ingame)
    else:
        print('unclepear')
