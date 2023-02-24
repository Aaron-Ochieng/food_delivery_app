from flask import Blueprint

home = Blueprint(__name__,url_prefix='/' , name='home')


@home.route('/')
def homepage():
    return 'Hello world'