from flask import Blueprint

recommended_food_blueprint = Blueprint('recommended-food',__name__)


@recommended_food_blueprint.route('/')
def recommended_food():
    return 'Hello world'