#!/bin/bash
# Created on 2020-03-14T10:13:33+1100, using template:mkdocs.sh.tmpl and json:gearbox.json

test -f /etc/gearbox/bin/colors.sh && . /etc/gearbox/bin/colors.sh

c_ok "Started."

c_ok "Installing packages."
if [ -f /etc/gearbox/build/mkdocs.apks ]
then
	APKS="$(cat /etc/gearbox/build/mkdocs.apks)"
	apk update && apk add --no-cache ${APKS}; checkExit
fi

if [ -f /etc/gearbox/build/mkdocs.env ]
then
	. /etc/gearbox/build/mkdocs.env
fi

if [ ! -d /usr/local/bin ]
then
	mkdir -p /usr/local/bin; checkExit
fi

pip3 install --upgrade pip; checkExit

pip3 install mkdocs mkdocs-alabaster mkdocs-cinder mkdocs-material mkdocs-psinder mkdocs-bootswatch mkdocs-bootstrap mkdocs-windmill mkdocs-windmill-dark; checkExit

rm -rf $HOME/.cache; checkExit

chmod a+x /usr/local/bin/mkdocs.sh; checkExit

c_ok "Finished."
