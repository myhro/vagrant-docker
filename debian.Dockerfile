FROM debian:stretch

RUN apt-get update
RUN apt-get install -q -y locales openssh-server sudo

RUN sed -i '/^# en_US.UTF-8 UTF-8/{s/^# //}' /etc/locale.gen
RUN locale-gen

RUN useradd --create-home --shell /bin/bash vagrant
RUN echo vagrant:vagrant | chpasswd
RUN echo root:vagrant | chpasswd

RUN echo "vagrant ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/01_vagrant
RUN chmod 0400 /etc/sudoers.d/01_vagrant

ADD https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub /home/vagrant/.ssh/authorized_keys
RUN chown -R vagrant:vagrant /home/vagrant/.ssh
RUN chmod 0600 /home/vagrant/.ssh/authorized_keys
RUN chmod 0700 /home/vagrant/.ssh

RUN mkdir /var/run/sshd
CMD ["/usr/sbin/sshd", "-D", "-e"]
EXPOSE 22
