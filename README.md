# Java Project

This is a simple Java project that prints a message to the console.

## Technologies Used
- Language: Java
- Container: Docker

## Prerequisites
- Docker installed
- Java Development Kit (JDK) installed locally

## Project Files
- **Main.java**: Main file of the project that prints the message to the console.
- **Dockerfile**: Docker file for building the image.
- **pom.xml**: Maven configuration file for managing dependencies (if using Maven).

# Create image in Docker

Execute it in the project directory.

~~~
docker build -t itsandy/java_project .
~~~

## Run the Docker Container
~~~
docker run itsandy/java_project
~~~

## Login in Docker Hub
~~~
docker login
~~~

## Docker Desktop push in Docker Hub
~~~
docker push itsandy/java_project
~~~

## Java Image URL
~~~
https://hub.docker.com/r/itsandy/java_project
~~~

# RailWay
We log in and link to GitHub to deploy the repositories.
