import datetime
from flask_sqlalchemy import SQLAlchemy
from flask_security import SQLAlchemyUserDatastore
from flask_security.models import fsqla_v2



db = SQLAlchemy()
fsqla_v2.FsModels.set_db_info(db)

class User(db.Model , fsqla_v2.FsUserMixin):
    pass

class Role(db.Model , fsqla_v2.FsRoleMixin):
    pass


user_datastore = SQLAlchemyUserDatastore(db,User,Role)