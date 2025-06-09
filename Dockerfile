# Use an official Python image
FROM python:3.10-slim

# Set work directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy app code
COPY . .

# Command to run
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:8000", "app:app"]
