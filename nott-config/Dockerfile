FROM python:3.10-slim
WORKDIR /app

# Copy the Python script
COPY app /app
COPY requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

CMD ["python", "/app/device.py"]