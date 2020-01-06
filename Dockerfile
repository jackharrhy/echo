FROM python:3-alpine

COPY requirements.txt /
COPY echo.py /app
COPY .env.dist /app/.env

RUN pip install -r requirements.txt

WORKDIR /app
CMD ["python", "echo.py"]
