from flask import Flask
from flaskext.mysql import MySQL

app = Flask(__name__)
mysql = MySQL()

app.config['MYSQL_DATABASE_USER'] = 'flask_user'
app.config['MYSQL_DATABASE_PASSWORD'] = 'admin'
app.config['MYSQL_DATABASE_DB'] = 'flask_db'
app.config['MYSQL_DATABASE_HOST'] = 'db' #MySQL DB Hostname here
mysql.init_app(app)

@app.route("/")
def main():
    try:
        DB = mysql.connect()
        cursor = DB.cursor()
        cursor.execute("SELECT * FROM items")
        items = cursor.fetchall()

        list = "<ol>"

        for item in items:
            list = list + "<li>" + item[1] + "</li>"

        list = list + "</ol>"
    except :
        list = "Error: Couldn't fetch the list!"
    finally:
        return "<html>" + list + "</html"

if __name__ == "__main__":
    app.run(host='0.0.0.0')