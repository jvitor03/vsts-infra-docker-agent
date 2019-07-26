FROM microsoft/vsts-agent:ubuntu-16.04

ARG TERRAFORM_VERSION=0.11.14

RUN apt-get update && \
    apt-get install -y make wget unzip python-pip python3-pip && \
    wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    mv terraform /usr/local/bin && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    pip install pipenv && \
    pip3 install pipenv
