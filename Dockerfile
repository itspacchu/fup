FROM python:3.11.0

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

CMD ["gunicorn","--workers=4","wsgi:app","-t 180","--bind=0.0.0.0"]
