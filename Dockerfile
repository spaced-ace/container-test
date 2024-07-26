FROM python:3.11.7-slim-bookworm

COPY requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir -r /app/requirements.txt

COPY . /app

WORKDIR /app


CMD ["python", "app.py"]
