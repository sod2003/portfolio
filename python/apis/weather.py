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