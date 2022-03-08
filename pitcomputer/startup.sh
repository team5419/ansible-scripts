#!/bin/bash

#Set to either 'pit' or 'finder'
MODE=scouting

case $MODE in

  pit)
    mpv ~/Desktop/compDisplay/
    ;;

  finder)
    cd ~/Desktop/MAPSS/
    python3 /home/team/Desktop/MAPSS/readSheet.py
    sleep 5
    firefox --kiosk 127.0.0.1:5000
    ;;

  scouting)
    ~/Desktop/chrome-ebogppdcaedoknonikmjoafagggbdndh-Default.desktop
    ;;

  *)
    echo "mode must be either 'pit' or 'finder'"
    ;;
esac