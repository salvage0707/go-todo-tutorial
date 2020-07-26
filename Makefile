NAME := todo
VERSION := $(gobump show -r)
REVISION := $(shell git rev-parse --short HEAD)
LDFLAGS := "-X main.revision=$(REVISION)"

export GO11MODULE=on

## Install dependencies
.PHONY: deps
deps: 
	go get -v -d

# 開発に必要な依存をインストール
## Setup
.PHONY: setup
setup: deps
	GO11MODULE=off go get \
		golang.org/x/lint/golint \
		github.com/x-motemen/gobump/cmd/gobump \
		github.com/Songmu/make2help/cmd/make2help

# サーバー
## Run Server
.PHONY: run
run: 
	go run main.go

# テスト実行
## Run tests
.PHONY: test
test: deps
	go test ./...

## Lint
.PHONY: lint
lint: setup
	go vet ./... \
	golint -set_exit_status ./...

## Show help
.PHONY: help
help:
	@make2help $(MAKEFILE_LIST)