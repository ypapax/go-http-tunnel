#!/usr/bin/env bash
set -ex
#https://github.com/mmatczuk/go-http-tunnel
gen(){
	openssl req -x509 -nodes -newkey rsa:2048 -sha256 -keyout client.key -out client.crt -subj '/CN=www.mydom.com/O=My Company Name LTD./C=US'
	openssl req -x509 -nodes -newkey rsa:2048 -sha256 -keyout server.key -out server.crt '/CN=www.mydom.com/O=My Company Name LTD./C=US'
}

$@