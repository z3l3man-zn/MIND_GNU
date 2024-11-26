# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster
STOPSIGNAL SIGINT

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 8081

CMD [ "python3", "/app/MIND.py" ]
