from flask import Flask
from app.routes import recommended_food_blueprint
from flask_security import Security;
from .auth import user_datastore , db
from app.config import Config


security = Security()

def create_app():
    app = Flask(__name__)
    app.config.from_object(Config)
    db.init_app(app)
    security.init_app(app , user_datastore)


    app.register_blueprint(recommended_food_blueprint)
    return app