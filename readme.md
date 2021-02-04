# Hello World with Docker and Volume Playground

If a directory is both present within the container and as a mounted
volume, the mounted volume takes precedence:

    ~/mine/current/code/docker/hello-volume (master)$ docker run hello-volume_hello
    hello from container
    
    ~/mine/current/code/docker/hello-volume (master)$ docker-compose up
    Starting hello-volume_hello_1 ... done
    Attaching to hello-volume_hello_1
    hello_1  | Hello from host - mounted volume
    hello-volume_hello_1 exited with code 0
    
    ~/mine/current/code/docker/hello-volume (master)$ docker-compose -f docker-compose-file-not-    found.yml up
    Recreating hello-volume_hello_1 ... done
    Attaching to hello-volume_hello_1
    hello_1  | cat: can't open '/app/hello.txt': No such file or directory
    hello-volume_hello_1 exited with code 1
