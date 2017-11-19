FROM centos/systemd
MAINTAINER Melih Savdert

ENV contaienr=docker

RUN yum clean all && \
    yum -y install nfs-utils bind-libs bind bind-utils

RUN echo "/asmdisks *(rw,sync,no_subtree_check,no_root_squash,fsid=0)" >> /etc/exports

RUN systemctl enable rpcbind
RUN systemctl enable nfs-server
RUN systemctl enable nfs-lock
RUN systemctl enable nfs-idmap
RUN systemctl enable named

ADD named.conf /etc/
ADD example.com.zone /var/named/
ADD 100.168.192.in-addr.arpa /var/named/

EXPOSE 111/udp
EXPOSE 2049

CMD ["/usr/sbin/init"]
