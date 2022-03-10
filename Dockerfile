FROM node:14-alpine3.15
# this is the minimum needed for the docker file 
# this is like installing an operating system but this has node installed already

#set working directory for our app in our containter
WORKDIR /src

COPY . .
# this is saying copying everything in the project, but since we have the docker ignore itll ignore the node modules 
#  from this folder to the docker folder from source to destination
#this copies our project files to docker image

RUN npm install
# installs our NPM dependencies 

ENV PORT = 3030
#By default the docker is rock solid so there are no ports so we have to open the container to use this port
# sets environmental variables

EXPOSE 3030
#so we expose 3000 
#this opens up the port 3000

CMD ["./node_modules/nodemon/bin/nodemon.js", "./index.js"]
#now to run the app 
# this takes an array of the parameters 
# this command runs the command and then kills the container
# thats why when it runs the index.js its going to run the command index.js which will continue to run this 

#you need to put this code to run it and name it your file, put the version you have and 
# docker build -t 'docker-demo':0.1 .
# its downloading node alpine to the computer, it does this once, its exporting the image and now good to go

#we map the docker to 3000 from port 9876, to show you can map but you can also just do the same port 3000 as normal

# to kill it do docker ps on anther terminal to see the id of the docker and then docker kill and the first 3 characters of the id
# you can also do docker run -t 3000:3000 'docker-demo':0.2 <-- to run the port 3000 how you would normally run it

# docker run -p 3030:3030 -v /Users/brians/code/docker-demo/:/src/ 'docker-demo':0.8  to run the nodemon 
