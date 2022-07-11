# Welcome to Facefood!

Using Facefood you can share the most delicious foods of the world! Was created in Ruby on Rails and is sample of project to my portfolio.

https://user-images.githubusercontent.com/16558068/174885977-60fbfd35-98e0-4923-b59d-864a2bcaad6b.mp4

## Pre-requisites

### Install Docker and Docker Compose
See the oficial documentation to install it
https://docs.docker.com/compose/install/

### How to execute the project?
Open your terminal and execute the commands:

 1. Clone the project to a new directory
 2. Acess the directory and execute "docker build ."
 3. After download and install de packages, execute the command "docker-compose buid && docker-compose up -d" to startup the appication
 4. Now run de command "docker-compose run app rake db:create db:migrate db:seed" to create the database and tables
 5. Open your terminal and acess "localhost:3000"
 6. That's all!
