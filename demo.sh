#! /bin/bash

make log LOG="this is not json text" TAG="no-tag"
make log LOG="\{\'s\':1 \'x\':2 \}" TAG="json"
make log LOG="this is also not json. rsyslog classify it by log TAG" TAG="no-tag"
