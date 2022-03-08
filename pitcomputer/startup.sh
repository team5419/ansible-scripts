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
    firefox --kiosk 127.0.0.1:5000
    ;;

  scouting)
    /usr/bin/chromium --profile-directory=Default --app-id=ebogppdcaedoknonikmjoafagggbdndh --kiosk
    ;;

  *)
    echo "mode must be either 'pit' or 'finder'"
    ;;
esac