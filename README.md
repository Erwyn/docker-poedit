Docker Poedit
==============

This is a simple image to launch a poedit GUI using docker.

How to use it
--------------

simply issue in your terminal:

    docker run -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix erwyn/poedit

You may want to mount your folders/files as volumes with the `-v` option on Docker.
