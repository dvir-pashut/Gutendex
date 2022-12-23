#!/bin/sh

./manage.py migrate

./manage.py updatecatalog

echo "starting server on port 8000"

./manage.py runserver 0.0.0.0:8000
