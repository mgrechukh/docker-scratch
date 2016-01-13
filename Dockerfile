FROM scratch

# take it from https://busybox.net/downloads/binaries/busybox-i686
ADD busybox-i686 /bin/sh
ADD busybox-i686 /busybox-docker

ADD http://download.openvz.org/template/precreated/centos-5-x86_64.tar.gz /rootfs-docker
RUN /busybox-docker tar xfz /rootfs-docker && rm -f /rootfs-docker /busybox-docker
