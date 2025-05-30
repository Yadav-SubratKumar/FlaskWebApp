FROM python:3.11-slim
WORKDIR /app
ENV PYTHONDONTWRITEBTYECODE=1
ENV PYTHONUNBUFFERED=1
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app.py"]
