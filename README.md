# docker-jenkinsslave-gitbook

Jenkins Slave docker image, based off [garethjevans/jenkinsslave-ubuntu](https://hub.docker.com/r/garethjevans/jenkinsslave-ubuntu/), with [Compliance Masonry](https://github.com/opencontrol/compliance-masonry) and [GitBook](https://www.gitbook.com/) installed

This is available on Docker hub as [garethjevans/jenkinsslave-gitbook](https://hub.docker.com/r/garethjevans/jenkinsslave-gitbook/)

## Usage

To create a basic Jenkins GitBook Slave instance use:

```
docker run \
    --detach \
    --env JENKINS_MASTER=<JENKINS_MASTER_ADDRESS> \
    --env JENKINS_USERNAME=<JENKINS_USERNAME> \
    --env JENKINS_PASSWORD=<JENKINS_PASSWORD> \
    --env JENKINS_EXECUTORS=1 \
    --env JENKINS_LABELS=gitbook \
    --env JENKINS_NAME=gitbook-slave \
    --env LANG=C.UTF-8 \
    --name jenkins_gitbook \
    --volume /etc/localtime:/etc/localtime:ro \
    garethjevans/jenkinsslave-gitbook:latest
```

Obviously, you'll need an instance of Jenkins Master as well, try [garethjevans/jenkins](https://hub.docker.com/r/garethjevans/jenkins/).
