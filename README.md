# Video Access Token Server for Python

#### Looking for the JavaScript Video Quickstart? It has been moved [here](https://github.com/twilio/video-quickstart-js).


This server-side application demonstrates generating Access Token for Twilio Video. Before we begin, we need to collect
all the config values we need to run the application:

| Config Value  | Description |
| :-------------  |:------------- |
Account SID | Your primary Twilio account identifier - find this [in the console here](https://www.twilio.com/console).
API Key | Used to authenticate - [generate one here](https://www.twilio.com/console/video/runtime/api-keys).
API Secret | Used to authenticate - [just like the above, you'll get one here](https://www.twilio.com/console/video/runtime/api-keys).


## A Note on API Keys

When you generate an API key pair at the URLs above, your API Secret will only
be shown once - make sure to save this in a secure location,
or possibly your `~/.bash_profile`.


## Setting up the Python Application

This application uses the lightweight [Flask Framework](http://flask.pocoo.org/).

Begin by creating a configuration file for your application:

```bash
cp .env.example .env
```

Edit `.env` with the three configuration parameters we gathered from above.

Next, we need to set up your Python environment. Install `virtualenv` via `pip`:

```bash
pip install virtualenv
```

Next, we need to install our dependencies:

```bash
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
```

Now we should be all set! Run the application using the `python` command.

```bash
python app.py
```

To generate Access Token, visit [http://localhost:5000?identity=alice&room=example](http://localhost:5000?identity=alice&room=example).

## License

MIT
