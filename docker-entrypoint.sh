#!/bin/sh

exec ngrok $ARGS -log stdout  > /var/log/ngrok/ngrok.log
