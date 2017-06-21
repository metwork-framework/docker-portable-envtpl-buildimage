FROM centos:centos6
MAINTAINER Fabien MARTY <fabien.marty@gmail.com>

ADD root/build/add_epel.sh /build/add_epel.sh
RUN /build/add_epel.sh

ADD root/build/add_ius.sh /build/add_ius.sh
RUN /build/add_ius.sh

RUN yum -y --enablerepo=epel install python27 python27-devel python27-pip python27-setuptools python27-virtualenv

RUN pip2.7 install envtpl && \
    pip2.7 install pyinstaller

RUN pyinstaller /usr/bin/envtpl
RUN tar -cvf /portable_envtpl.tar /dist/envtpl && \
    gzip -f /portable_envtpl.tar
