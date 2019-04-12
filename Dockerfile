FROM ubuntu:18.10
RUN apt-get -y update && apt-get install -y sudo && apt-get install -y git
RUN nproc
