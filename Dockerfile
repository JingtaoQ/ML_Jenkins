# Dockerfile to build a flask app
FROM python:3
ADD . /python-flask
WORKDIR /python-flask
RUN pip install -r requirements.txt

CMD ["python","app.py"]

