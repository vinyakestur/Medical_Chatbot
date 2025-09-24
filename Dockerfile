FROM python:3.10-slim-buster

WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . /app

# Set environment variable to suppress tokenizers warnings
ENV TOKENIZERS_PARALLELISM=false

# Expose port
EXPOSE 8080

CMD ["python3", "app.py"]