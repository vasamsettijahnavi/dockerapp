# Use the official Python image from Docker Hub
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 to communicate with the outside world
EXPOSE 5000

# Define the command to run your application
CMD ["python", "app.py"]
