# jenkins-inbound-agent-py
This is a simple repository that adds python3 and python3-pip to the offical jenkins inbound agent (currently set to the latest-bookworm-jdk21 label)

## source dockerhub image page
https://hub.docker.com/r/jenkins/inbound-agent

## example docker-compose.yaml and .env files
> [!IMPORTANT]
> modify these files for your environment and preferences, see the source dockerhub image page for more details

docker-compose.yaml:
```yaml
services:
  jenkins-agent:
    image: ghcr.io/russellacraig/jenkins-inbound-agent-py:latest
    container_name: jenkins-agent
    env_file:
      - .env
    environment:
      - JENKINS_AGENT_NAME=jenkins-agent
      - JENKINS_AGENT_WORKDIR=/home/jenkins/agent
    restart: unless-stopped
```
.env:
```
JENKINS_SECRET=123456789
JENKINS_URL=https://jenkins_url:8443
```
