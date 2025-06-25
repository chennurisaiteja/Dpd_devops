# Use slim Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy app code
COPY . .

# Install Flask
RUN pip install flask

# Expose port
EXPOSE 8002

# Run the app
CMD ["python", "app.py"]

