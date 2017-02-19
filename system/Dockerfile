FROM centos:7
MAINTAINER Marcin Zaremba, marcin.zaremba@gmail.pl

# tools
RUN yum update -y \
  && yum install -y wget curl \
  && yum install -y cmake \
  && yum install -y less \
  && yum install -y vim \
  && yum install -y mc \
  && yum install -y ant \
  && yum install -y screen \
  && yum install -y net-tools \
  && yum install -y unzip \
  && yum -y install java-1.8.0-openjdk-devel \
  && yum install -y openssh-server python-setuptools \
  && yum clean all

# java
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0
ENV PATH "$PATH":/${JAVA_HOME}/bin:.:

# aliases
RUN touch ~/.bash_aliases
RUN printf "\n# wczytanie aliasow\nif [ -f ~/.bash_aliases ]; then\n\tsource ~/.bash_aliases\nfi\n" >> ~/.bashrc
RUN source ~/.bashrc