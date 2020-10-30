centos:
	docker build -f centos.Dockerfile -t vagrant-centos:8 .

ubuntu:
	docker build -f ubuntu.Dockerfile -t vagrant-ubuntu:focal .
