FROM ubuntu:16.04
RUN apt-get --assume-yes update && apt-get --assume-yes upgrade
RUN apt-get --assume-yes install wget
RUN wget https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/v7.5/fahclient_7.5.1_amd64.deb
RUN printf 'stanfordlin\n225605\n2944807c6ec05cac2944807c6ec05cac\n3\nyes\n' | dpkg -i --force-depends fahclient_7.5.1_amd64.deb
ADD run.sh .