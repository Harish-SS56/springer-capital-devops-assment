# DevOps Intern Final Assessment - Dockerfile
# This Dockerfile containerizes a simple Python application

# Use official Python runtime as base image
FROM python:3.11-slim

# Set working directory in container
WORKDIR /app

# Copy the Python script into the container
COPY hello.py .

# Make the script executable
RUN chmod +x hello.py

# Set metadata labels
LABEL maintainer="DevOps Intern"
LABEL description="Hello DevOps containerized application"
LABEL version="1.0"

# Run the Python script when container starts
CMD ["python", "hello.py"]
