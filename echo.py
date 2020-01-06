import dotenv
import os
from dhooks import Webhook

dotenv.load_dotenv()

discord_webhook_url = os.environ["ECHO_DISCORD_WEBHOOK_URL"]
hook = Webhook(discord_webhook_url)

while True:
	hook.send(input("echo > "))
