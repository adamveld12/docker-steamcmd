# SteamCMD 

A steamcmd client setup in a container for easy docker based dedicated server setups.

## How to setup

1. Go into `configuration/configure.sh` and add a steam username and password into the relevant environment variables. (I would recommend that you use a dummy steam account for this). Also add an APP ID for the game you want to run

3. Add your startup script to `configuration/startup.sh`. The entrypoint in the container is pointing there by default.

4. `docker run -d -e APPID="someappid" -v $PWD/configuration:/configuration -p someport  adamveld12/steam`

There is also a `/data` folder that can be used for any persistent information.
