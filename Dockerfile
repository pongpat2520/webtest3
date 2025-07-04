FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y \
    docker.io \
    git

RUN jenkins-plugin-cli --plugins "workflow-aggregator:2.6" "git:5.2.1" "docker-workflow:1.28"