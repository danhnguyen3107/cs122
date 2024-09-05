#!/bin/bash

kubectl exec cs122 -- python manage.py makemigrations main_app; 
kubectl exec cs122 -- python manage.py migrate;

kubectl exec cs122 -- python manage.py shell -c "from main_app.models import CustomUser; CustomUser.objects.create_superuser('admin@gmail.com', 'admin', username='admin')"
