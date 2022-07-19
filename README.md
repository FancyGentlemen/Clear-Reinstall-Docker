# Clear-Reinstall-Docker
Clears all data related to docker and reinstalls it. Tested on Jetson Nano/Ubuntu.

PURPOSE: To completely remove docker and all its data and reinstall a fresh docker.

I made this script because I had limited space on my Jetson Nano and kept hitting my max storage while playing around with docker.  The normal methods to delete images and containers kept giving me annoying errors.  I did not care about anything I had in docker, so I made this nuke meathod.  It also works to reinstall docker if you somehow seriously messed up your docker.  I have only tested this on the Jetson Nano with Ubuntu 18.04.  I am 99% confident that it works for any ubuntu version, and 90% confident it works for any linux destro if you changed "apt" to what ever your destro's package repository keyword is.
