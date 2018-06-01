FROM centos:centos6
MAINTAINER Fabien MARTY <fabien.marty@gmail.com>

ENV ENVTPL_SOURCE=git+https://github.com/metwork-framework/envtpl

ADD root/add_epel.sh /add_epel.sh
RUN /add_epel.sh

ADD root/add_ius.sh /add_ius.sh
RUN /add_ius.sh

RUN yum -y install python27 python27-devel python27-pip python27-setuptools python27-virtualenv git

RUN pip2.7 install pyinstaller

ADD root/make_and_cat.sh /make_and_cat.sh
CMD /make_and_cat.sh
