import os
from flask import Flask, jsonify, request
from faker import Factory
from twilio.access_token import AccessToken, ConversationsGrant

app = Flask(__name__)
fake = Factory.create()

@app.route('/')
def index():
    return app.send_static_file('index.html')

@app.route('/token')
def token():
    # get credentials for environment variables
    account_sid = 'ACe3c1d548801318109de50936544bee86'
    api_key = 'SKbe3f360a2b152bb3fed9fc20a400f6ab'
    api_secret = 'lg3vHXehZbJOh2PwJQsY7KAkWVQHXsS9'
    
    # Create an Access Token
    token = AccessToken(account_sid, api_key, api_secret)

    # Set the Identity of this token
    token.identity = fake.user_name()
    
    # Grant access to Conversations
    grant = ConversationsGrant()
    grant.configuration_profile_sid = 'VS30dd0fbecf6725f558373c452dad52a8'
    token.add_grant(grant)

    # Return token info as JSON
    return jsonify(identity=token.identity, token=token.to_jwt())

if __name__ == '__main__':
    app.run(debug=True)