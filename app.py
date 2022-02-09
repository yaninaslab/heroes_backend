import dbinteractions as dbi
from flask import Flask, request, Response
import json

import sys

app = Flask(__name__)


@app.get('/hero')
def list_all_heroes():
    try:
        heroes = dbi.list_all_heroes()
        heroes_json = json.dumps(heroes, default=str)
        return Response(heroes_json, mimetype="application/json", status=200)
    except:
        print("Something went wrong")
        return Response("Sorry, something is wrong with the service. Please try again later", mimetype="plain/text", status=501)


@app.get('/villain')
def list_all_villains():
    try:
        villains = dbi.list_all_villains()
        villains_json = json.dumps(villains, default=str)
        return Response(villains_json, mimetype="application/json", status=200)
    except:
        print("Something went wrong")
        return Response("Sorry, something is wrong with the service. Please try again later", mimetype="plain/text", status=501)


if(len(sys.argv) > 1):
    mode = sys.argv[1]
else:
    print("You must pass a mode to run this python script. Either testing or production")
    exit()

if(mode == "testing"):
    print("Running in testing mode")
    from flask_cors import CORS
    CORS(app)
    app.run(debug=True)
elif(mode == "production"):
    print("Running in production mode")
    import bjoern  # type: ignore
    bjoern.run(app, "0.0.0.0", 5005)
else:
    print("Please run with either testing or production. Example:")
    print("python3.10 app.py production")
