#!/bin/bash
export GH_USERNAME=jozhan

docker login -u $GH_USERNAME -p $GH_READ_PACKAGE ghcr.io
