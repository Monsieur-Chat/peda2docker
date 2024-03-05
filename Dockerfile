FROM debian:buster

RUN apt-get -y -q update \
    && apt-get -y -q install sudo nano git curl wget build-essential python3-pip python2 python2-dev gdb

# Install gdb
RUN git clone https://github.com/longld/peda.git ~/peda &echo "source ~/peda/peda.py" >> ~/.gdbinit

RUN mkdir -p /workspace/
VOLUME /workspace/
WORKDIR /workspace/

CMD /bin/bash
