# Clear-Reinstall-Docker
Clears all data related to docker and reinstalls it. Tested on Jetson Nano/Ubuntu.

PURPOSE: To completely remove docker and all its data and reinstall a fresh docker.

CONTEXT:
I made this script because I had limited space on my Jetson Nano and kept hitting my max storage while playing around with docker.  The normal methods to delete images and containers kept giving me annoying errors.  I did not care about anything I had in docker, so I made this nuke meathod.  It also works to reinstall docker if you somehow seriously messed up your docker.  I have only tested this on the Jetson Nano with Ubuntu 18.04.  I am 99% confident that it works for any ubuntu version, and 90% confident it works for any linux destro if you changed "apt" to what ever your destro's package repository keyword is.

TO RUN:

$ git clone https://github.com/FancyGentlemen/Clear-Reinstall-Docker.git

$ sudo chmod +x /parent_dir/Clear-Reinstall-Docker/docker_reborn.sh

$ sudo /parent_dir/Clear-Reinstall-Docker/docker_reborn.sh

Here are websites I referenced to make this:

https://docs.docker.com/engine/install/ubuntu/

https://stackoverflow.com/questions/42264617/how-to-repair-docker-or-reinstall-it
