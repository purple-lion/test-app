FROM python:3.8.6-alpine3.12

ENV FLASK_APP wsgi.py

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY app app
COPY wsgi.py ./
COPY entrypoint.sh ./

EXPOSE 5000
ENTRYPOINT ["./entrypoint.sh"]
