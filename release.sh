#!/bin/bash
# release.sh - Run migrations before starting the server

echo "Running database migrations..."
python manage.py migrate

echo "Starting the server..."
exec gunicorn --bind 0.0.0.0:$PORT ticketanywhere.wsgi:application