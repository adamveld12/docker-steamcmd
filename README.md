# SteamCMD 

A steamcmd client setup in a container for easy docker based dedicated server setups.

## How to setup

1. Add your server's startup script to `/configuration/startup.sh`. The entrypoint in the container is pointing there by default.

2. `docker run -d -e STEAMUSER="someuser" -e STEAMPASS="somepass" -e APPID="someappid" -v $PWD/configuration:/configuration -p someport adamveld12/steam`

`$STEAMUSER` and `$STEAMPASS` will default to anonymous and empty string respectively, so setting those may not be required depending on the game you're intalling. An absent `$APPID` will cause the intall script to error out.

There is also a `/data` folder that can be used for any persistent server information.
