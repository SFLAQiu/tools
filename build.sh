#!/bin/sh
rm -rf ./target
go build bootstrap.go
mkdir target
mkdir target/tools
mkdir target/tools/bin
mkdir target/tools/log
mv bootstrap target/tools
cd target/tools
cp  -r ../../config ./
cp  -r ../../web ./
cp ../../stop.sh ./bin
cp ../../restart.sh ./bin
cp ../../Dockerfile .
cd -