FROM python:3.9.10-slim-buster

WORKDIR /opt

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt && rm -rf /root/.cache/pip

COPY . .

CMD ["python", "copper/train.py" ]
