
FROM python:3.11.3-slim-buster

WORKDIR /app

COPY task.py .
COPY requirements.txt .
COPY model.pkl .

RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python"]

CMD ["task.py"]
