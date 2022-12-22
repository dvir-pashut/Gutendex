#!/bin/sh

./manage.py migrate
wait
./manage.py updatecatalog
wait
./manage.py collectstatic
./manage.py runserver localhost:8000
