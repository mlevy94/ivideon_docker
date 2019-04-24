FROM dorowu/ubuntu-desktop-lxde-vnc:bionic

RUn apt-get update && apt-get install wget -y

RUN wget http://packages.ivideon.com/ubuntu/keys/ivideon.list -O /etc/apt/sources.list.d/ivideon.list

RUN bash -c 'wget -O - http://packages.ivideon.com/ubuntu/keys/ivideon.key | sudo apt-key add -'

RUN apt-get update && apt-get install ivideon-video-server -y