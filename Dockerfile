FROM debian:latest

RUN apt update -y && \
    apt upgrade -y && \
    apt install lintian vim git -y

COPY .bashrc /root/.bashrc
COPY corrections.txt /usr/share/lintian/data/spelling/

CMD ["bash"]
