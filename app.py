import dbinteractions as dbi
from flask import Flask, request, Response
import json

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


app.run(debug=True)
