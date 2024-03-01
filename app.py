from flask import Flask, request, jsonify, abort
app = Flask(__name__)

    
@app.route("/")
def principal():
    return jsonify({"mensaje": "Datos recibidos correctamente."}), 200


if __name__ == '__main__':
    app.run(debug=True)

