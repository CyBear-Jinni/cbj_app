#!/bin/sh

# You mast have pub and protoc inside the path 
# PATH=$PATH:~/opt/bin...

pub global activate protoc_plugin

export PATH="$PATH":"$HOME/.pub-cache/bin"

protoc --dart_out=grpc:protocAsDart/ -Iprotos protos/smart_connection.proto


# bin/shered/server_proto_as_dart/  # copy to smart device protoc folder


# copy to flutter protoc folder

