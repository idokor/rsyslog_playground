.PHONEY: edit run help bash log demo

LOG=test 1
TAG=normal

edit:
	vi $(shell pwd)/config/rsyslog.conf

run:
	docker run --name rsyslog_c -v $(shell pwd)/config/rsyslog.conf:/etc/rsyslog.conf --rm -it rsyslog/syslog_appliance_alpine

help:
	docker run rsyslog/syslog_appliance_alpine help

bash:
	docker exec -it rsyslog_c sh
log:
	docker exec -it rsyslog_c logger -t $(TAG) $(LOG)
demo:
	./demo.sh


