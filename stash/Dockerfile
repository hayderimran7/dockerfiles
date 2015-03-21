# Base docker image
FROM ubuntu:14.04
MAINTAINER Imran Hayder <hayderimran7@gmail.com>

RUN apt-get update
RUN apt-get install -y git git-core python-dev wget openjdk-7-jre-headless openjdk-7-jre icedtea-plugin
RUN wget -q -O /usr/local/bin/stash.bin https://downloads.atlassian.com/software/stash/downloads/atlassian-stash-3.7.1-x64.bin
RUN chmod a+x /usr/local/bin/stash.bin
#ADD  https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb /src/google-chrome-stable_current_amd64.deb

# Autorun x11vnc
CMD /usr/local/bin/stash.bin -Djava.awt.headless=true ; bin/start-stash.sh
