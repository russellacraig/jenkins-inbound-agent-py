FROM jenkins/inbound-agent:latest-bookworm-jdk21
USER root
RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get -y install \
        python3 \
        python3-pip \
    && rm -rf /var/lib/apt/lists/*

LABEL org.opencontainers.image.source https://github.com/russellacraig/jenkins-inbound-agent-py
