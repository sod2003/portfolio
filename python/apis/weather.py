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
    print(f"The weather for {forecast['date']} will be {forecast['state']} with a temperature of {forecast['temp']} degrees.")