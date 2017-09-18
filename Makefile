centos:
	docker build -f centos.Dockerfile -t vagrant-centos:6 .

debian:
	docker build -f debian.Dockerfile -t vagrant-debian:stretch .

ubuntu:
	docker build -f ubuntu.Dockerfile -t vagrant-ubuntu:xenial .