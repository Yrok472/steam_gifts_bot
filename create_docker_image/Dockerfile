FROM ubuntu:18.04

ENV PHPSESSID ""

RUN apt update && apt upgrade -y && apt install python3 python3-requests python3-bs4 -y
RUN mkdir -p /etc/steam_gifts/ /opt/steam_gifts/
RUN touch /var/log/liveness
WORKDIR /opt/steam_gifts/
COPY bad_giveaways_link.txt sg.py win.sh won.txt files_for_unpack.zip probes.sh  ./
RUN chmod +x /opt/steam_gifts/sg.py
CMD /usr/bin/python3 -u /opt/steam_gifts/sg.py | tee /var/log/liveness
