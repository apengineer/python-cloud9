FROM python:3.6-alpine3.10
WORKDIR /usr/src/app
COPY requirements.txt .

RUN pip install -r requirements.txt
COPY . /usr/src/app
WORKDIR /usr/src/app

CMD ["python", "handler.py"]
