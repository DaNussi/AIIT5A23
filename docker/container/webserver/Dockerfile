# Container für eine Apache2 Webserver mit Ubuntu 22.04 als Basis
#
# Datum: 27.9.2023
#
# 5AHET

FROM ubuntu:22.04

COPY ./README.md .
RUN  apt-get -y update
RUN  apt-get -y install apache2

CMD apache2 -D FOREGROUND
