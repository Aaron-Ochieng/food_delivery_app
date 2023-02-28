import os


class Config():
    SECRET_KEY = 'security_key'
    SQLALCHEMY_DATABASE_URI = 'sqlite:///food_delivery_app.db'
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    SQLALCHEMY_ENGINE_OPTIONS = {
        "pool_pre_ping":True
    }
    SECURITY_PASSWORD_SALT = "8718972823981546325746"
    SECURITY_REGISTERABLE=True
    SECURITY_TRACKABLE=True
    SECURITY_PASSWORD_LENGTH_MIN=4
    SECURITY_EMAIL_VALIDATOR_ARGS={
        'check_deliverability':False
    }
