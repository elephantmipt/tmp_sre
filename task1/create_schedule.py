import requests
from dataclasses import dataclass, field
import pyrallis

@dataclass
class Config:
    users = field(("s.petrov", "v.ivanov"))
