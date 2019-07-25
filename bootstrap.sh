#!/bin/sh

mysql -h db -u flask_user --password=admin flask_db < flask_db.sql

exec python3 app.py