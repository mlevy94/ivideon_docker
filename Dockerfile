FROM dorowu/ubuntu-desktop-lxde-vnc:bionic

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y wget gpg-agent

RUN wget http://packages.ivideon.com/ubuntu/keys/ivideon.list -O /etc/apt/sources.list.d/ivideon.list

RUN bash -c 'wget -O - http://packages.ivideon.com/ubuntu/keys/ivideon.key | sudo apt-key add -'

RUN apt-get update && apt-get install ivideon-video-server -y

ENTRYPOINT ["/bin/bash", "-c", "/startup.sh & sudo ivideon-server"]