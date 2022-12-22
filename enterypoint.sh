#!/bin/sh

./manage.py migrate
wait
./manage.py updatecatalog
wait
./manage.py collectstatic
wait
./manage.py runserver localhost:8000
