#!/bin/bash

docker image rm yrok472/steam_gifts_bot
docker image rm steam_gifts_bot
docker build . -t steam_gifts_bot:latest
docker tag steam_gifts_bot yrok472/steam_gifts_bot:latest
docker push yrok472/steam_gifts_bot
