#!/bin/bash

# "cd" into "steam_gifts_bot" before script running

# Preconditions:
# docker login https://harbor.smartvz.site # enter creds from https://harbor.smartvz.site

docker image rm infra/steam_gifts_bot
docker image rm steam_gifts_bot
docker build . -t steam_gifts_bot:latest
docker tag steam_gifts_bot harbor.smartvz.site/infra/steam_gifts_bot:latest
docker push harbor.smartvz.site/infra/steam_gifts_bot:latest
