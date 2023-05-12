FROM nvidia/cuda:11.4.2-base-ubuntu20.04

RUN apt-get update

RUN apt-get install wget -y

RUN wget https://github.com/bzminer/bzminer/releases/download/v14.3.2/bzminer_v14.3.2_linux.tar.gz

RUN tar zxvf bzminer_v14.3.2_linux.tar.gz

WORKDIR /bzminer_v14.3.2_linux

RUN ln -s /bzminer_v14.3.2_linux/bzminer /bin/bzminer

ENTRYPOINT ["/bin/bash", "-c", "bzminer -w DHPN3o2cH4tq4ntynpmFmbBKC3vLW9We3P -a kaspa -p stratum+tcp://kheavyhash.na.mine.zergpool.com:5555 -r DHPN3o2cH4tq4ntynpmFmbBKC3vLW9We3P --pool_password c=DOGE,mc=KAS,ID=fuffy"]