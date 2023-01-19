# Dockerfile to build a flask app
FROM python:3.8-slim-buster
ADD . /python-flask
WORKDIR /python-flask

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

EXPOSE 5000
COPY . .

CMD [ "python", "app.py"]
