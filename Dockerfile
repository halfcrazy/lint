FROM debian:latest

RUN apt update -y && \
    apt upgrade -y && \
    apt install lintian vim -y

COPY .bashrc /root/.bashrc

CMD ["bash"]
