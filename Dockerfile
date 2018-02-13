FROM ubuntu:17.10

RUN apt-get update && apt-get install -y \
	qt5-default wget unzip

RUN wget https://github.com/neutroncoin/neutron/releases/download/v2.0.0/Neutron-qt_v2.0.0_linux.zip && \
	unzip *zip && \
	rm *zip

RUN mkdir -p /run/user/1000 && chmod 700 /run/user/1000

VOLUME ["/root/.neutron"]

ENTRYPOINT ["/neutron-qt"] 
