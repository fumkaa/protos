.PHONY: gen_catalog lint breaking update all

all: update lint generate

update:
	buf dep update

lint:
	buf lint

breaking:
	buf breaking --against '.git#branch=main'

generate:
	buf generate