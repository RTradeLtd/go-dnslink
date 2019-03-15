GO=env GO111MODULE=on go

.PHONY: deps
deps:
	$(GO) mod verify
	$(GO) mod tidy
	
.PHONY: vet
vet:
	$(GO) vet ./...

.PHONY: install
install:
	$(GO) install ./dnslink

.PHONY: tests
tests:
	$(GO) test -race -cover ./...