import requests, secret, datetime

key = secret.key

# Targeting the Open Weather Map api for my current weather request for the City of Atlanta
# The API key is extracted to a hidden file that will not be included in this public repo; an API key can be obtained by signing up for an account at https://openweathermap.org
def fetch_weather(city):
    request = requests.get(f'https://api.openweathermap.org/data/2.5/weather?q={city}&appid={key}')

    weather = request.json()

    dt = weather['dt']
    dt = datetime.datetime.utcfromtimestamp(dt//1000).replace(microsecond=dt%1000*1000)
    humidity = weather['main']['humidity']

    print(f'{dt} -> {city}\'s current Humidity: {humidity}')

def main():
    city = input('Enter city name: ')
    fetch_weather(city)

if __name__ == '__main__':
    main()