#!/usr/bin/python3
""" Geolocation from IP lookups """
from urllib import request
import json

try:
    data = json.load(request.urlopen('http://ipinfo.io/json'))
except Exception as e:
    print(e)
finally:
    print('You are near: {city}, {region}, {country}'.format(**data))
    print(' Lat/Long: {}E'.format(data['loc'].replace(',','N, ')))