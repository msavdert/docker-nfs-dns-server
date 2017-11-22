# docker-nfs-dns-server

Docker DNS and NFS Server for Oracle Rac Installation

Basic DNS configuration steps necessary to use the Single Client Access Name (SCAN) introduced in Oracle 11g Release 2 RAC.
NFS and ASM for your shared storage layer

The server used in for Oracle Database 12c Release 2 RAC is called "nfs.example.com" and as an IP address of "192.168.10.20".
This represents the minimum you can do to make a SCAN work.
The container only discusses the use of BIND as the DNS server and use of ASM as the NFS server on Oracle Linux.
