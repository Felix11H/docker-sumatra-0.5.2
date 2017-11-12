FROM ubuntu:16.04
MAINTAINER Felix Z. Hoffmann <felix11h.dev@gmail.com>

RUN apt-get -y update
RUN apt-get install -y python python-dev python-pip

RUN pip install django==1.3.1
RUN pip install django-tagging==0.3.1
RUN apt-get install -y wget
RUN wget https://github.com/open-research/sumatra/archive/0.5.2.tar.gz
RUN tar -xvzf 0.5.2.tar.gz
RUN sed -i 's/http/https/g' sumatra-0.5.2/distribute_setup.py
RUN pip install sumatra-0.5.2/
RUN pip install gitpython==0.3.7

WORKDIR /home/lab
