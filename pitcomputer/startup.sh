#!/bin/bash

#Set to either 'pit' or 'finder'
MODE=finder

case $MODE in

  pit)
    mpv /home/team/Desktop/compDisplay/
    ;;

  finder)
    cd /home/team/Desktop/MAPSS/
    python3 /home/team/Desktop/MAPSS/readSheet.py
    sleep 3
    firefox --kiosk 127.0.0.1:5000
    ;;

  *)
    echo "mode must be either 'pit' or 'finder'"
    ;;
esac

