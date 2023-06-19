FROM python:3.9-slim

WORKDIR /workspace/emlo4-lightning

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "copper/train.py" ]
