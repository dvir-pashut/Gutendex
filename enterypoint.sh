#!/bin/sh

./manage.py migrate

./manage.py updatecatalog

./manage.py collectstatic
sleep 5
echo "running server"
./manage.py runserver 0.0.0.0:8000
