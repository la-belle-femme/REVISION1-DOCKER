from flask import Flask, make_response
import socket
import random
import sys

app = Flask(__name__)

@app.route('/')
def hello():
    hostname = socket.gethostname()
    random_number = random.randint(1, 1000)
    response_text = f"Hello, Docker! I'm running on host: {hostname}. Random number: {random_number}\n"
    print(f"Request received. {response_text}", file=sys.stderr, flush=True)
    response = make_response(response_text)
    response.headers['Debug-Message'] = 'This is a debug message'
    return response

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)
