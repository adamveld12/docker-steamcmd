#!/bin/bash
. /configuration/configure.sh;

/home/steam/steamcmd/steamcmd.sh \
      +login $STEAMUSER $STEAMPASS
      +force_install_dir /home/steam/games \
      +app_update $APPID validate \
      +exit;

# clean up the credentials from the environment
rm -rf /configuration/configure.sh;

export STEAMUSER = "";
export STEAMPASS = "";

/configuration/startup.sh;

