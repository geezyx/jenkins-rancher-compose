FROM jenkins
USER root
ADD rancher-compose /usr/bin/rancher-compose
RUN chmod +x /usr/bin/rancher-compose
RUN apt-get install software-properties-common && \
    apt-add-repository ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y libssl-dev libffi-dev python-dev python-pip ansible && \
    apt-get clean
RUN pip install --upgrade cffi requests
USER jenkins
