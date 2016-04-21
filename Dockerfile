FROM ubuntu:16.04
MAINTAINER neil@grogan.ie

ENV DIRPATH /data

RUN apt-get update && \
    apt-get install -y \
    libauthen-ntlm-perl \
    libcrypt-ssleay-perl \
    libdigest-hmac-perl \
    libfile-copy-recursive-perl \
    libio-compress-perl \
    libio-socket-inet6-perl \
    libio-socket-ssl-perl \
    libio-tee-perl \
    libmodule-scandeps-perl \
    libnet-ssleay-perl      \
    libpar-packer-perl \
    libterm-readkey-perl \
    libtest-pod-perl \
    libtest-simple-perl     \
    libunicode-string-perl \
    liburi-perl \
    cpanminus
RUN cpanm Data::Uniqid Mail::IMAPClient

WORKDIR $DIRPATH

VOLUME $DIRPATH

CMD ["/bin/bash"]