# Dockerfile to build a flask app
FROM python:3.8-slim-buster

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

ADD . /app
WORKDIR /app

EXPOSE 5000
COPY . .

CMD [ "python", "app.py"]
