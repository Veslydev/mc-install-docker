FROM debian:buster-slim
LABEL maintainer="Parkeymon"
USER root
RUN echo "Building..."
RUN apt-get update
RUN apt-get install -y curl
RUN curl -fsSL https://deb.nodesource.com/setup_15.x | bash -
RUN apt-get install -y nodejs
RUN npm -v