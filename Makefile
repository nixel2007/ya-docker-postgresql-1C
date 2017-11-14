all: build

build:
	@docker build --tag=silverbulleters/sameand1cpostgresql .

release: build
	@docker build --tag=silverbulleters/sameand1cpostgresql:$(shell cat VERSION) .
