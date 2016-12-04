FROM debian
MAINTAINER bmartel

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y curl
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y yarn libgtk2.0-0 libnotify4 libgconf-2-4 libnss3 libxss1 xvfb
RUN curl -sL https://deb.nodesource.com/setup_6.x | /bin/bash && \
        DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs
