FROM debian:latest

RUN apt update -y && \
    apt upgrade -y && \
    apt install lintian vim -y

CMD ["bash"]
