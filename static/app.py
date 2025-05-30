from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"

@app.route("/product")
def product():
    return "This is product list"

if __name__ == "__main__":
    app.run(debug=True)