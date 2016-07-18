FROM jenkins
USER root
ADD rancher-compose /usr/bin/rancher-compose
RUN chmod +x /usr/bin/rancher-compose
RUN apt-get update && \
    apt-get install -y libssl-dev libffi-dev python-dev python-pip && \
    apt-get clean
RUN pip install --upgrade cffi ansible requests
RUN pip install git+git://github.com/ansible/ansible.git@devel
USER jenkins
