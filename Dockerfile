FROM python:3.10
ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code

# update
RUN set -x && \
    apt-get -y update && apt-get install -y \
    sudo \
    wget \
    vim \
    && apt-get update \
    && apt-get install -y tzdata \
    && apt-get install -y git

RUN pip install argon2-cffi \
    && pip install --upgrade pip \
    && pip install django \
    && pip install django-shortcuts \
    && pip install Pillow \
    && pip install psycopg2-binary \
    && pip install requests \
    && pip install django-environ \
    && pip install django-extensions

EXPOSE 8000
