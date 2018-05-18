#!/usr/bin/python3
import requests
import sys
import os.path
from decouple import config


telegram_token = config('TELEGRAM_TOKEN')
telegram_chat_id = config('TELEGRAM_CHAT_ID')
telegram_bot_send_message_url = "{}{}{}".format(
        "https://api.telegram.org/bot",
        telegram_token,
        "/sendMessage"
    )

def main(args):
    telegram_bot_message="No Message"
    if len(args) > 0:
        if os.path.isfile(args[0]):
            with open(args[0]) as file_message:
                telegram_bot_message=""
                for line in file_message:
                    telegram_bot_message += line
                data = [
                    ('chat_id', telegram_chat_id),
                    ('text', telegram_bot_message),
                ]

                response = requests.post(telegram_bot_send_message_url, data=data)

        else:
            for telegram_bot_message in args:
                # telegram_bot_message = input('Mande mais mensagens:')
                # if (len(telegram_bot_message)):
                data = [
                    ('chat_id', telegram_chat_id),
                    ('text', telegram_bot_message),
                ]

                response = requests.post(telegram_bot_send_message_url, data=data)

    else:
        while (len(telegram_bot_message)):
            telegram_bot_message = input('Mande mais mensagens:')
            if (len(telegram_bot_message)):
                data = [
                    ('chat_id', telegram_chat_id),
                    ('text', telegram_bot_message),
                ]

                response = requests.post(telegram_bot_send_message_url, data=data)

if __name__ == "__main__":
    # :white_check_mark::x:
    main(sys.argv[1:])
