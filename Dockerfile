FROM       alpine:latest
MAINTAINER Netgineer <github: @netgineer>

RUN echo "===> Installing  tools"  && \
    apk update && \
    apk add --no-cache curl apache2-utils iproute2 ethtool strace iputils tcpdump iperf3 nmap netcat-openbsd iftop && \
    apk add --no-cache nethogs iptraf-ng ngrep  vnstat net-tools mtr nload bind-tools httpie openssh busybox-extras && \
    apk add hping3 --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing && \
    pip3 install --upgrade pip && \
    pip3 uninstall -y idna && \
    pip3 install idna==2.6

WORKDIR /~
CMD ["/bin/bash"]
