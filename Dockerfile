FROM metwork/centos6:latest
MAINTAINER Fabien MARTY <fabien.marty@gmail.com>

ENV ENVTPL_SOURCE=git+https://github.com/metwork-framework/envtpl

# Maybe we do not need to add epel repo (included in metwork/centos6)
ADD root/add_epel.sh /add_epel.sh
RUN /add_epel.sh

RUN yum -y install python27 python27-devel python27-pip python27-setuptools python27-virtualenv git

RUN pip2.7 install pyinstaller==3.6

ADD root/make_and_cat.sh /make_and_cat.sh
CMD /make_and_cat.sh
