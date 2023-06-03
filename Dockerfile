FROM nvidia/cuda:11.4.2-base-ubuntu20.04

RUN apt-get update

RUN apt-get install wget -y

RUN wget https://github.com/bzminer/bzminer/releases/download/v14.3.2/bzminer_v14.3.2_linux.tar.gz

RUN tar zxvf bzminer_v14.3.2_linux.tar.gz

WORKDIR /bzminer_v14.3.2_linux

RUN ln -s /bzminer_v14.3.2_linux/bzminer /bin/bzminer

ENTRYPOINT ["/bin/bash", "-c", "bzminer -a ironfish -w YOUR_IRONFISH_ADDRESS.YOUR_WORKER_NAME -p stratum+tcp://us2.ironfish.herominers.com:1145"]