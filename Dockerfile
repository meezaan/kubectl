FROM debian:bullseye-slim

RUN apt update && \
  apt-get -y install curl gettext-base && \
  curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
  chmod u+x ./kubectl && \ 
  mv ./kubectl /usr/bin/kubectl

