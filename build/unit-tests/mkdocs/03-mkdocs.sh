#!/bin/bash
# Created on 2020-03-11T15:12:51+1100, using template:01-base.sh.tmpl and json:2.2.34.json

p_info "mkdocs" "Release test started."

WGET="$(wget -qO/dev/null http://localhost/ 2>&1)"
if [ "${WGET}" == "" ]
then
	c_ok "mkdocs HTTP running."
else
	c_err "mkdocs HTTP NOT running."
fi

p_info "mkdocs" "Release test finished."

