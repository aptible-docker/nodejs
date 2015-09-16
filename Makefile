DOCKER = docker
TAGS = v0.10.x v0.12.x v4.0.x

all: release

release: $(TAGS)
	$(DOCKER) push quay.io/aptible/nodejs

build: $(TAGS)

.PHONY: $(TAGS)
$(TAGS):
	$(DOCKER) build -t quay.io/aptible/nodejs:$@ $@
