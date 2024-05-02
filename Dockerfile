# Use an official Python runtime as a parent image
FROM python:3.10-slim-buster

# Set an environment variable to ensure Python output is sent straight to terminal (e.g. your container log)
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
# Set the working directory in the container
WORKDIR /app/

# Copy the current directory contents into the container at /app/blogsphere/
COPY . /app/

# Install any needed packages specified in requirements.txt
RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc && \
    pip install --no-cache-dir -r requirements.txt


# Make port 8000 available to the world outside this container
EXPOSE 8000  

# Define environment variable
ENV PORT=8000

# Run manage.py when the container launches
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
