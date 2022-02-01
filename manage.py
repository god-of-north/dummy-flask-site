from flask.cli import FlaskGroup

from this_site import app


cli = FlaskGroup(app)

if __name__ == "__main__":
    cli()
