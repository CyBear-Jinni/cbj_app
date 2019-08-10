#!/bin/sh

# You mast have pub and protoc inside the path 

pub global activate protoc_plugin

export PATH="$PATH":"$HOME/.pub-cache/bin"

cd ..

protoc --dart_out=grpc:bin/shered/server_proto_as_dart/ -Iprotos protos/smart_connection.proto
