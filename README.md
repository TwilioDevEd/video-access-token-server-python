# Video Quickstart for Python

This application should give you a ready-made starting point for writing your
own video apps with Twilio Video. Before we begin, we need to collect
all the config values we need to run the application:

| Config Value  | Description |
| :-------------  |:------------- |
Configuration Profile SID | Identifier for a set of config properties for your video application - [find yours here](https://www.twilio.com/console/video/profiles).
Account SID | Your primary Twilio account identifier - find this [in the console here](https://www.twilio.com/console).
API Key | Used to authenticate - [generate one here](https://www.twilio.com/console/video/dev-tools/api-keys).
API Secret | Used to authenticate - [just like the above, you'll get one here](https://www.twilio.com/console/video/dev-tools/api-keys).

## A Note on API Keys

When you generate an API key pair at the URLs above, your API Secret will only
be shown once - make sure to save this in a secure location, 
or possibly your `~/.bash_profile`.

## Setting Up The Python Application

This application uses the lightweight [Flask Framework](http://flask.pocoo.org/). 

### Mac & Linux

Begin by creating a configuration file for your application:

```bash
cp .env.example .env
```

Edit `.env` with the four configuration parameters we gathered from above. 

Next, we need to set up your Python environment. Install `virtualenv` via `pip`:

```bash
pip install virtualenv
```

<<<<<<< HEAD
### Windows (PowerShell)

Begin by creating a configuration file for your application:

```powershell
cp .env.example.ps1 .env.ps1
```

Edit `.env.ps1` with the four configuration parameters we gathered from above.
"Dot-source" the file in PowerShell like so:

```powershell
. .\.env.ps1
```

This assumes you will run the application in the same PowerShell session. If not,
edit the `.env.ps1` and uncomment the `[Environment]::SetEnvironmentVariable` calls.
After re-running the script, the environment variables will be peramently set for
your user account.

## All Platforms

Next, we need to install our depenedencies:
=======
Activate your virtual environment and install our dependencies:
>>>>>>> master

```bash
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
```

Now we should be all set! Run the application using the `python` command.

```bash
python app.py
```

Your application should now be running at [http://localhost:5000](http://localhost:5000). Send an invite 
to another user in another browser tab or window to start video chatting! When you're finished, deactivate your virtual environment using `deactivate`.

![screenshot of chat app](https://s3.amazonaws.com/com.twilio.prod.twilio-docs/images/video2.original.png)

## License

MIT
