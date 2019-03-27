#!/bin/sh

set -x

exec ngrok $ARGS -log stdout  > /var/log/ngrok/ngrok.log
