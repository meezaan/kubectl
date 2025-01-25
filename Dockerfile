FROM debian:bookworm-slim

RUN apt update && \
  apt-get -y install curl git gettext-base jq wget && \
  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"  && \
  chmod u+x ./kubectl && \ 
  mv ./kubectl /usr/bin/kubectl && \
  wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 -O /usr/bin/yq && \
  chmod +x /usr/bin/yq

