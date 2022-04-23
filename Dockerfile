FROM debian:buster-slim
LABEL maintainer="Parkeymon"
USER root
RUN echo "Building..."
RUN apt -y update
RUN apt-get -y install wget 
RUN apt -y update
RUN apt -y --no-install-recommends install curl lib32gcc1 ca-certificates
RUN apt -y update
RUN apt-get -y install libicu63
RUN apt-get update
RUN apt-get install -y curl
RUN curl -fsSL https://deb.nodesource.com/setup_15.x | bash -
RUN apt-get install -y nodejs
RUN npm -v
RUN npm install --global yarn
RUN apt-get -y install jq
RUN wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64.tar.gz -O - |  tar xz && mv yq_linux_amd64 /usr/bin/yq