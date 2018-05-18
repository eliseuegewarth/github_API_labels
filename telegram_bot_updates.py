import requests
from decouple import config

telegram_token = config('TELEGRAM_TOKEN')

response = requests.get('https://api.telegram.org/bot' + telegram_token + '/getUpdates')
r = response.json()
for element in r['result']:
	print (element['message']['chat']['id'])