from channels import route

def on_connect(message):
    message.reply_channel.send({"accept": True})

def message_handler(message):
    message.reply_channel.send({"accept": True})


channel_routing = [
    route("websocket.connect", on_connect),
    route("websocket.receive", message_handler),
]