# django-docker-from-scratch
```shell
$ git clone https://github.com/jangjichang/django-docker-from-scratch.git
```

# 1-run-python-using-docker

```shell
$ git checkout feat/1-run-python-using-docker
```

Builds Docker images from a Dockerfile. 
```shell
$ docker build -t django-docker-from-scratch  .
```
If you are curious about ENV [PYTHONUNBUFFERED](https://docs.python.org/3/using/cmdline.html#envvar-PYTHONUNBUFFERED), refer to the link

Check docker image created
```shell
$ docker images | grep django-docker-from-scratch
django-docker-from-scratch  latest  9fc74849b6b8  2   minutes ago   62.4MB
```

Create container from `django-docker-from-scratch` image, and then starts it
```shell
$ docker run -it --rm --name django-docker-from-scratch  django-docker-from-scratch
Python 3.11.3 (main, Apr  5 2023, 23:11:59) [GCC 12.2.1 20220924] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>>
```

# 2-start-django-project

```shell
$ git checkout feat/2-start-django-project
```

Builds Docker images from a Dockerfile and start container
```shell
$ docker build -t django-docker-from-scratch  .
$ docker run -it --rm --name django-docker-from-scratch --volume `pwd`:/app/ -p 8000:8000 django-docker-from-scratch python manage.py runserver 0:8000
```

## How to install django and runserver?
브랜치 1에 이어서
/bin/bash로 실행하고 장고 프로젝트를 만들고 runserver를 실행합니다.

해당 브랜치는 이미 만들어져 있기 때문에 아래는 따라히지말고 참고만 하세요.
```shell
$ docker run -it --rm --name django-docker-from-scratch --volume `pwd`:/app/ django-docker-from-scratch /bin/bash
$ root@0b1418f37001:/app# django-admin startproject django_app .
$ root@0b1418f37001:/app# python manage.py runserver
$ root@0b1418f37001:/app# exit
```

이렇게 하면 장고 프로젝트가 만들어졌고, 호스트와 컨테이너의 포트를 바인딩 해주고 서버를 실행합니다.
```shell
$ docker run -it --rm --name django-docker-from-scratch --volume `pwd`:/app/ -p 8000:8000 django-docker-from-scratch python manage.py runserver 0:8000
```

http://127.0.0.1:8000/ 에 접속하면 장고 사이트를 확인할 수 있습니다.
