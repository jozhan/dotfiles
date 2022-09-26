#!/bin/bash
export GH_USERNAME=jozhan

docker login -u $GH_USERNAME -p $GH_READ_PACKAGE ghcr.io

go env -w GOPRIVATE='*github.com/github/*'

git config --global user.email "25186519+jozhan@users.noreply.github.com"
