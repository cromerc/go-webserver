#!/bin/bash
pushd src
find . -type f -not -name "*.gz" -exec gzip {} \;
popd

go build -ldflags="-w -s"
upx go-webserver
