#!/bin/sh

./manage.py migrate

./manage.py updatecatalog

./manage.py collectstatic

echo "#!/bin/bash  ./manage.py collectstatic" > static.sh

chmod 777 startic.sh
./static.sh
rm static.sh

./manage.py runserver 0.0.0.0:8000
