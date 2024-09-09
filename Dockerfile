# Set the base image
FROM python:3.11

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application's source code into the container at /app
COPY Herb-Scan /app/

# Expose the port the app runs on
EXPOSE 8000

# Run the Flask development server when the container launches
CMD ["python", "app.py", "0.0.0.0:8000"]