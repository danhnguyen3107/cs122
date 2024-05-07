#!/bin/bash

docker exec -it cs122 python manage.py makemigrations main_app; 
docker exec -it cs122 python manage.py migrate;

docker exec -it cs122 python manage.py shell -c "from main_app.models import CustomUser; CustomUser.objects.create_superuser('admin@gmail.com', 'admin', username='admin')"