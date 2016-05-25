FROM jenkins
USER root
ADD rancher-compose /usr/bin/rancher-compose
USER jenkins
