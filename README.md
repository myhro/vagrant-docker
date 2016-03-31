Vagrant with Docker
===================

This repository contains a `Dockerfile` and a `Vagrantfile`, needed to run the official [Debian Docker image][debian-docker-hub] on [Vagrant][vagrant] with the [Docker][docker] provider.

## Usage

Assuming Docker and Vagrant are properly installed, the process isn't different from running an image from another Vagrant provider:

    git clone https://github.com/myhro/vagrant-docker.git
    cd vagrant-docker/
    vagrant up
    vagrant ssh

By default it pulls the image `debian:jessie`. This can be easily changed (in the `Dockerfile`) to another release of [Debian][debian] or even one from [Ubuntu][ubuntu] (although there is no guarantee, as this wasn't tested).

## References

[building a vagrant ready docker image][vagrant-docker-guide] by [Tasos Latsas][tlatsas]


[debian-docker-hub]: https://hub.docker.com/_/debian/
[debian]: https://www.debian.org/
[docker]: https://www.docker.com/
[tlatsas]: https://github.com/tlatsas
[ubuntu]: http://www.ubuntu.com/
[vagrant-docker-guide]: http://www.kodama.gr/2015/05/09/building-a-vagrant-ready-docker-image/
[vagrant]: https://www.vagrantup.com/
