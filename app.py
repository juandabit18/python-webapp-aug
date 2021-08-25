from flask import Flask

app = Flask(__name__)


@app.route("/")
def initial():
    return "<h1>Tons bien o que!!!,  primer cambio!!!</h>"


if __name__ == "__main__":
    app.run()
