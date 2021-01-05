from flask import Flask, jsonify
from flask import make_response
from flask import request
import runner

app = Flask(__name__)

@app.route('/', methods=['POST','GET'])
def basic():
	return "Hello World"

@app.route('/api/v1.0/classify', methods=['POST'])
def api_all():
	return runner.identifyImage(request.data)

if __name__ == '__main__':
	app.run(debug=False)
