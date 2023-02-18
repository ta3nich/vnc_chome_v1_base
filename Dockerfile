
FROM debian:bullseye
RUN apt-get update

ENV DISPLAY=:1 \
    VNC_PORT=5901 \
    NO_VNC_PORT=6901 \
    SSH_PORT=22 \
    SUPER_VISOR__PORT=9001 \
    DEBIAN_FRONTEND=noninteractive
###########################################################################
ENV HOME=/root \
    TERM=xterm \
    STARTUPDIR=/dockerstartup \
    INST_SCRIPTS=/root/install \
    ADD_SCRIPTS=/root/install_add \
    NO_VNC_HOME=/usr/share/novnc \
    DEBIAN_FRONTEND=noninteractive \
    VNC_COL_DEPTH=24 \
    VNC_RESOLUTION=1360x768 \
    VNC_PW=vncpassword \
    VNC_VIEW_ONLY=false
### Envrionment config
RUN mkdir /root/VPN
ADD ./VPN/ /root/VPN/

RUN mkdir /root/fight

###########################################################################
RUN apt autoremove -y
RUN apt update --fix-missing
RUN apt-get -f install  -y \
        jq \
        nano \
        psmisc \
        sudo \
        tini \
        software-properties-common python3 python3-dev python3-numpy \
        openvpn autocutsel  python3-pip python3.9-tk python3.9-dev  pwgen  \
        wget openssh-server locate nano gedit screen  net-tools curl git tor \
        xfce4-goodies xfce4\
        thunar tumbler xarchiver \
        mugshot thunar-archive-plugin \
        dbus-x11 xauth xinit x11-xserver-utils xdg-utils \
        tightvncserver novnc python3-websockify python3-pyvirtualdisplay \
        build-essential \
        xvfb xserver-xephyr ttf-wqy-zenhei python2.7

RUN pip3 install selenium==4.0.0.a1 pymysql pyvirtualdisplay faker-e164 Faker PySocks stem  bs4   ConfigParser lxml  speechrecognition requests \
 pyvirtualdisplay pydub pyautogui emojis emoji mysql-connector




