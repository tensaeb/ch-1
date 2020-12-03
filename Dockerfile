#Pull base image

FROM python:3.7

#Set env't variables
ENV PYTHONDONTWRITEBYCODE 1
ENV PYTHONUNBUFFERED 1

#Set work directory
WORKDIR /code

#Install Dependecies
COPY Pipfile Pipfile.lock /code/
RUN pip install pipenv && pipenv install --system

#copyproject
COPY . /code/