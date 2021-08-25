# syntax=docker/dockerfile:1
FROM python:latest
WORKDIR /app
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY app.py .
ENV FLASK_APP=app.py
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]
