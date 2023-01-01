import requests, secret

city = 'atlanta'
key = secret.key

# Targeting the Open Weather Map api for my current weather request for the City of Atlanta
# The API key is extracted to a hidden file that will not be included in this public repo; an API key can be obtained by signing up for an account at https://openweathermap.org
request = requests.get(f'https://api.openweathermap.org/data/2.5/weather?q={city}&appid={key}')
print(request)
'''
weather = [
    {
        'date':'today',
        'state': 'cloudy',
        'temp': 68.5
    },
    {
        'date':'tomorrow',
        'state': 'sunny',
        'temp': 74.8
    }
]

for forecast in weather:
    date = forecast['date']
    state = forecast['state']
    temp = forecast['temp']
    print(f"The weather for {date} will be {state} with a temperature of {temp} degrees.")
'''