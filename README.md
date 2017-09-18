Vagrant with Docker
===================

This repository contains a few `Dockerfile`s. They can be used to generated images with SSH configured to run on [Vagrant][vagrant] with the [Docker][docker] provider.

## Usage

They can be built with `Makefile` commands like:

    make debian


There's also support for `centos` and `ubuntu` images.

A `Vagrantfile` like the following can then be used:

``` ruby
# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV["VAGRANT_DEFAULT_PROVIDER"] = "docker"

Vagrant.configure("2") do |config|
  config.vm.provider "docker" do |d|
    d.image = "vagrant-debian:stretch"
    d.has_ssh = true
  end
end
```

## References

[building a vagrant ready docker image][vagrant-docker-guide] by [Tasos Latsas][tlatsas]


[debian-docker-hub]: https://hub.docker.com/_/debian/
[debian]: https://www.debian.org/
[docker]: https://www.docker.com/
[tlatsas]: https://github.com/tlatsas
[ubuntu]: http://www.ubuntu.com/
[vagrant-docker-guide]: http://www.kodama.gr/2015/05/09/building-a-vagrant-ready-docker-image/
[vagrant]: https://www.vagrantup.com/
