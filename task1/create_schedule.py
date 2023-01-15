import requests
from dataclasses import dataclass, field
import pyrallis

import datetime

from itertools import cycle

import time

@dataclass
class Config:
    num_days: int = field(default=2)
    hours: int = field(default=8)
    host: str = field(default="http://localhost:8080")
    lenght: int = field(default=65)
    delta: int = field(default=2)

@pyrallis.wrap()
def main(config: Config):
    start = datetime.datetime.fromisoformat("2023-01-17").replace(hour=config.hours)
    end = start + datetime.timedelta(days=config.lenght)
    cur_date = start

    iter_people = cycle([["s.petrov", "v.ivanov"], ["s.petrov", "v.ivanov"][::-1]])

    team = requests.get(f"{config.host}/api/v0/teams/biba%20team").json()
    print(team)
    for p_person, s_person in iter_people:
        next_date = cur_date + datetime.timedelta(days=config.delta)
        resp_1 = requests.post(
            f"{config.host}/api/v0/events",
            json={
                "user": p_person,
                "team": "biba team",
                "role": "primary",
                "start": int(time.mktime(cur_date.timetuple())),
                "end": int(time.mktime(next_date.timetuple())),
            },
        )
        if not resp_1.ok:
            print(resp_1.content)
            break
        resp_2 = requests.post(
            f"{config.host}/api/v0/events",
            json={
                "user": s_person,
                "team": "biba team",
                "role": "secondary",
                "start": int(time.mktime(cur_date.timetuple())),
                "end": int(time.mktime(next_date.timetuple())),
            },
        )
        if not resp_1.ok:
            print(resp_1.content)
            break
        cur_date = next_date
        if cur_date > end:
            break
    
if __name__ == "__main__":
    main()
