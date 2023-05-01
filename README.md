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
$  docker run -it --rm --name django-docker-from-scratch  django-docker-from-scratch
Python 3.11.3 (main, Apr  5 2023, 23:11:59) [GCC 12.2.1 20220924] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>>
```
