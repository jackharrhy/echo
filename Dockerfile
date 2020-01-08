FROM python:3-slim-buster

WORKDIR /app
COPY requirements.txt /app/
COPY echo.py /app/
COPY .env.dist /app/.env

RUN pip install -r requirements.txt

WORKDIR /app
CMD ["python", "echo.py"]
