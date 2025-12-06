FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY handler.py .

CMD ["python", "-c", "import runpod; runpod.serverless.start({'handler': __import__('handler').handler})"]
