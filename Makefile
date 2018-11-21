alpine:
	docker build -f alpine.Dockerfile -t vagrant-alpine .

centos:
	docker build -f centos.Dockerfile -t vagrant-centos:7 .

debian:
	docker build -f debian.Dockerfile -t vagrant-debian:stretch .

ubuntu:
	docker build -f ubuntu.Dockerfile -t vagrant-ubuntu:bionic .
