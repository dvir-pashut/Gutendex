#!/bin/sh

./manage.py migrate

./manage.py updatecatalog

./manage.py collectstatic

./manage.py runserver localhost:8000
