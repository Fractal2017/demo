ECHO OFF

ECHO nodejs image

ECHO Builds an image called "nodejs-app" from a Dockerfile
ECHO is placed in the current directory

docker build -t nodejs-app .

docker run --rm -p 8080:3000 -d nodejs-app

DEMO
1. How do we make all this reusable?
   Ans: Create IMAGES (use Dockerfile)
2. > run.bat
3. > curl http://localhost:8080
4. > docker images
5. > docker stop (current running container)
6. > docker rmi (current image)
