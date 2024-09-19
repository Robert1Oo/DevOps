# the official Python image from the Docker Hub
FROM python:3.9-slim

# the working directory in the container
WORKDIR /app

# copy the requirements file into the working dir
COPY app/requirements.txt /app/

# install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# copy the app directory contents into the container at /app
COPY app /app

# make port 5000 available to the world outside this container
EXPOSE 5000

# define environment variable
ENV FLASK_APP=main.py

# run the application
CMD ["flask", "run", "--host=0.0.0.0"]
