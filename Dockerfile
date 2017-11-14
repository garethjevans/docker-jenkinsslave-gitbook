FROM garethjevans/jenkinsslave-maven:v1.4.7-ubuntu

ENV NODE_FLAVOUR=6.x

USER root

RUN curl -L https://github.com/opencontrol/compliance-masonry/releases/download/v1.1.2/compliance-masonry_1.1.2_linux_amd64.tar.gz -o compliance-masonry.tar.gz && \
    tar -xf compliance-masonry.tar.gz && \
    cp compliance-masonry_1.1.2_linux_amd64/compliance-masonry /usr/local/bin

RUN curl -sL https://deb.nodesource.com/setup_${NODE_FLAVOUR} | bash - && \
    apt-get -y install nodejs calibre && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN npm install gitbook-cli -g

USER jenkins

RUN gitbook --version
