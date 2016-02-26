#!/bin/bash
if [[ -f /configuration/configure.sh ]]; then
  . /configuration/configure.sh;
fi

if [[ -z $STEAMUSER ]]; then
  export STEAMUSER="anonymous"
  export STEAMPASS=""
fi;

if [[ -z $APPID ]]; then
  echo "An APPID environment variable must be defined";
  exit 1
fi;

/home/steam/steamcmd/steamcmd.sh \
      +login $STEAMUSER $STEAMPASS \
      +force_install_dir /home/steam/ \
      +app_update $APPID validate \
      +exit;
