FROM ubuntu:20.04
ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN  apt -y update
RUN  apt -y upgrade
RUN apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN  apt -y install nodejs
RUN  apt -y  install gcc g++ make
RUN npm install -g @angular/cli
RUN node --version
RUN  npm --version
RUN ng --version