REM EXAMPLE 02
REM run.bat

ECHO OFF
ECHO runs multiple containers from the same image "ubuntu"
ECHO containers, executes the "bash" command
ECHO and containers are stopped then they are removed

docker run -it -d --rm --name ubuntu1 ubuntu /bin/bash
docker run -it -d --rm --name ubuntu2 ubuntu /bin/bash
docker run -it -d --rm --name ubuntu3 ubuntu /bin/bash

DEMO:
1. Open 3 terminals to connect ("attach") each one to each containers
2. 
