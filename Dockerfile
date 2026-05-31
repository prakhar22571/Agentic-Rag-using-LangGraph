# Use official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install dependencies required by the application
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container
COPY . .

# Hugging Face Spaces routes traffic to port 7860
EXPOSE 7860

# Run the FastAPI application on port 7860
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "7860"]