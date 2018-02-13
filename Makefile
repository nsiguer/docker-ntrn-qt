run:
	xhost local:root
	#docker run -d --name ntrn-wallet -it -v $$PWD/.neutron/:/root/.neutron -v /root/user/1000:/root/user/1000 -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$$DISPLAY -e XDG_RUNTIME_DIR=/run/user/1000 --device /dev/snd --name ntrn-wallet ntrn-wallet -rescan
	docker-compose up -d
stop:
	docker-compose down
	#docker stop ntrn-wallet && docker rm ntrn-wallet
build:
	docker-compose build
	#docker build -t ntrn-wallet .

