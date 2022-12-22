#!/bin/sh

./manage.py migrate

./manage.py updatecatalog

./manage.py collectstatic

echo "starting server on port 8000"
./manage.py runserver 0.0.0.0:8000
