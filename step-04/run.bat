ECHO OFF

ECHO node.js image (node:7.7.4-alpine)
ECHO runs a node server and an application app.js
ECHO maps the current directory to /src dir in the container
ECHO current working directory in container is /src

docker run -it --rm --name node -d -v %CD%/src -w /src node:7.7.4-alpine node app.js

DEMO:
1. > run.bat
2. > docker ps
3. > curl http://localhost:3000
4. ERROR cannot connect to the server
5. Show code port is 3000
6. Show curl command 3000
7. > docker logs node

  Show server is up and running permanently
8. > docker logs node -f
   > curl http://localhost:3000
   It does not break the system 

  Inspect the container "node"
9. > docker inspect node

  Verify PORT section is empty

We need to forwward the container port 3000 to host port 8080
10. > docker run -it --rm --name node -d -v %CD%/src -w /src -p 8080:3000 node:7.7.4-alpine node app.js
11. > curl http://localhost:8080

Show the container info: Notice the PORT section is properly filled
12. > docker inspect node

Show the current containers status
13. > docker ps