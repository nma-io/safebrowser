# Safe Firefox Browser
This browser will allow you to research URL's safely.
It utilizes Kasm Workspaces' amazing streaming technology.
Check out Kasm Workspace at https://www.kasmweb.com/

Simply clone this repo and run:

> docker build -t safefirefox:latest .
> docker run -it -d --name safefirefox -p6901:6901 safefirefox

Then connect your browser to https://localhost:6901
The username is "safe" and password is "firefox"


Alternately, you may pull my ARM64 version hosted on DockerHub by using:

docker run --rm -d --name firefox --shm-size=512m -p 6901:6901 -e VNC_PW=firefox -e VNC_USER=firefox disog/safefirefox

Utilize the username/password of: firefox
