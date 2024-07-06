# Hello

These instructions helps you to deal with the app as a container, wether you want to devlop the current app then containerize it or just play with the available features directly.

# Develop then containerize

#### After finishing the edits you want and saving them, open terminal and do the following:

cd age_calculator

docker build -t age_calculator .

docker run --name app1 -p 5000:5000 age_calculator

http://127.0.0.1:5000 (open in the web browser, provide your birth date then enter)

#### Back to the terminal:

ctrl + c

docker container rm app1

# Use the ready-to-use container

#### Download the image:

docker pull robert1oo/age_calculator:latest

#### Run the container:

docker run --name app1 -p 5000:5000 robert1oo/age_calculator

http://127.0.0.1:5000 (open in the web browser, provide your birth date then enter)

#### Back to the terminal:

ctrl + c

docker container rm app1
