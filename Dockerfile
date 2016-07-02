FROM ubuntu:14.04
MAINTAINER Marica Antonacci "marica.antonacci@gmail.com"

ONEDATA_VERSION=3.0.0.beta6-1

RUN apt-get update &&  apt-get install -y curl

RUN curl http://packages.onedata.org/onedata.gpg.key | apt-key add -
RUN echo \"deb [arch=amd64] http://packages.onedata.org/apt/ubuntu/trusty trusty main\" > /etc/apt/sources.list.d/onedata.list
RUN echo \"deb-src [arch=amd64] http://packages.onedata.org/apt/ubuntu/trusty trusty main\" >> /etc/apt/sources.list.d/onedata.list

RUN apt-get update && apt-get install -y oneclient=${ONEDATA_VERSION}

RUN apt-get install -y --only-upgrade libtbb2
