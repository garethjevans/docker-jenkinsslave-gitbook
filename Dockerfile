FROM garethjevans/jenkinsslave-maven:v1.3.5

ENV NODE_FLAVOUR=6.x

USER root

RUN curl -sL https://deb.nodesource.com/setup_${NODE_FLAVOUR} | bash - && \
    apt-get -y install nodejs calibre && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN npm install gitbook-cli -g

USER jenkins
