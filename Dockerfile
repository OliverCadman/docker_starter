# Since we're creating a simple Python application,
# we need to pull a Python base image from the Docker registry.
# This base image will contain the libraries, tools, interpreter and dependencies
# required for a Python application to run, which you can then customise to suit
# your use case.
FROM python:latest 

# Used to define the working directory of your Dockerized application.
# Think of this as being equivalent to executing both the 'mkdir /app' 
# and 'cd /app' commands on your local machine.
WORKDIR /app

# Copy all of the files from your local directory into your newly created workinf directory.
# This is a crucial step in order for our Docker container to be aware of our application's 
# modules, assets, and dependencies. 

# All of the modules, assets and dependencies that are necessary for your application to run
# locally MUST be copied into your Docker container.

# In our case, we only have one file in our local directory; app.py. 
COPY . /app/

# This is a default command that will be executed when we run 'docker run <container_name>'.
# NOTE: You can only run a Docker container after you have built the container.
# 1. docker build -t my_helloworld_app . 
# 2. docker run my_helloworld_app

CMD ["python", "app.py"]