ECHO OFF

ECHO Docker volume: Share content between containers
ECHO create a common volume (mount point) by using parameter -v
ECHO Extract a rar file

docker run --rm -v %CD%:/Files maxcnunes/unrar unrar x -r Trunck.rar

DEMO:
