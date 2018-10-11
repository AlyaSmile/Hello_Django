# Hello_Django
The sample of using Python, Django and Docker. 

## Steps
### Docker buikd
Dockerfile:
```
 FROM python:alpine
 COPY . app/
 RUN python3 -m pip install -r app/requirements.txt
 CMD ["python", "app/manage.py", "runserver", "--noreload", "--nothreading", "0.0.0.0:8000"]
```

For building your image use command 
```
docker build -t hello_django .
```
### Docker run
```
docker run -d --name hello_django -p 9876:8000 hello_django
```
### Try 
* http://127.0.0.1:9876/
* http://127.0.0.1:9876/hello/Hello_django


### PS
```
docker pull bobjob/hello_django
```
