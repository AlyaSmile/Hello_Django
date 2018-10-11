 FROM python:alpine
 COPY . app/
 RUN python3 -m pip install -r app/requirements.txt
 CMD ["python", "app/manage.py", "runserver", "--noreload", "--nothreading", "0.0.0.0:8000"]