from flask import Flask

__version__ = '0.1.2'

def create_app():
    app = Flask(__name__)

    @app.route('/')
    def index():
        return f'Hello, {__version__}'

    return app
