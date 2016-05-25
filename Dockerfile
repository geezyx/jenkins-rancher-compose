FROM jenkins
USER root
ADD rancher-compose /usr/bin/rancher-compose
RUN chmod +x /usr/bin/rancher-compose
USER jenkins
