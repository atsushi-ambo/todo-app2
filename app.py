from flask import Flask, render_template, request

app = Flask(__name__)

@app.route("/")
def index():
    todos = []
    if request.method == "POST":
        todo = request.form["todo"]
        todos.append(todo)
    return render_template("index.html", todos=todos)

if __name__ == "__main__":
    app.run(debug=True)
