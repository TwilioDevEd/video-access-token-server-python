# Video Quickstart for Python

This application should give you a ready-made starting point for writing your
own video chatting apps with Twilio Video. Before we begin, we need to collect
all the credentials we need to run the application:

Credential | Description
---------- | -----------
Twilio Account SID | Your main Twilio account identifier - [find it on your dashboard](https://www.twilio.com/user/account).
Twilio Video Configuration SID | Adds video capability to the access token -[generate one here](https://www.twilio.com/user/account/video/profiles)
API Key | Used to authenticate - [generate one here](https://www.twilio.com/user/account/messaging/dev-tools/api-keys).
API Secret | Used to authenticate - [just like the above, you'll get one here](https://www.twilio.com/user/account/messaging/dev-tools/api-keys).

## A Note on API Keys

When you generate an API key pair at the URLs above, your API Secret will only
be shown once - make sure to save this in a secure location, 
or possibly your `~/.bash_profile`.

## Creating a Service SID

A service instance provides a shared scope for all the messages, users, and data
in our IP Messaging application. It's like a new database for all your app's data.

To create one, we can use the [REST API](/docs/api/ip-messaging/rest) - execute 
the following curl command in your terminal to create a service instance, whose 
SID you can use in your application. Replace `YourAppName` with an identifier
you would like to use, and `{api key}` and `{api secret}` with the values you
got from the step above.

```bash
curl -XPOST https://ip-messaging.twilio.com/v1/Services \
    -d "FriendlyName=YourAppName" \
    -u '{api key}:{api secret}'
```

Your new service SID will be prefixed with an `IS` in the JSON data you get back.

## Setting Up The Python Application

This application uses the lightweight [Flask Framework](http://flask.pocoo.org/). 
Begin by creating a configuration file for your application:

```bash
cp .env.example .env
```

Edit `.env` with the four configuration parameters we gathered from above. Export
the configuration in this file as system environment variables like so on Unix
based systems:

```bash
source .env
```

Next, we need to install our depenedencies:

```bash
sudo pip install -r requirements.txt
```

Now we should be all set! Run the application using the `python` command.

```bash
python app.py
```

Your application should now be running at http://localhost:3000. Send an invite to another user and start video chatting! If you just want to 
test it you can invite your own identity to video chat with yourself. 

![screenshot of chat app](http://i.imgur.com/nVR70FQ.png)

## License

MIT
