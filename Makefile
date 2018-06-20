.PHONY: default force

default: flwos/debian

flwos/debian: force
	docker build -t $@ $@
