FROM python:3.6-alpine3.10

WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . /usr/src/app

WORKDIR /usr/src/app

#least optimal, close your eyes for now
ENV AWS_ACCESS_KEY_ID='AKIAW5RFIV4AXD2FMHVY'
ENV AWS_SECRET_ACCESS_KEY='RoiANmZezVbeH6c1CUhJUbSkVC+sxJx6+R7hkhYt'

CMD ["python", "handler.py"]
