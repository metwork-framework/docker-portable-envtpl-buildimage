FROM metwork/centos6:latest
MAINTAINER Fabien MARTY <fabien.marty@gmail.com>

ENV ENVTPL_SOURCE=git+https://github.com/metwork-framework/envtpl

RUN yum -y install python27 python27-devel python27-pip python27-setuptools python27-virtualenv git

ADD root/make_and_cat.sh /make_and_cat.sh
CMD /make_and_cat.sh
