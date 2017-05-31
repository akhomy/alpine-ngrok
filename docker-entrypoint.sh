#!/bin/sh

set -x

exec ngrok $ARGS -log stdout  > stdout.txt

