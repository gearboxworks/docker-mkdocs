#!/bin/sh

# See gearboxworks/gearbox-base for details.
test -f /build/include-me.sh && . /build/include-me.sh

c_ok "Started."

apk add --no-cache python3 py2-pip; checkExit

pip install mkdocs mkdocs-alabaster mkdocs-cinder mkdocs-material mkdocs-psinder mkdocs-bootswatch mkdocs-bootstrap mkdocs-windmill mkdocs-windmill-dark; checkExit
rm -rf $HOME/.cache; checkExit
chmod a+x /usr/local/bin/mkdocs.sh; checkExit

c_ok "Finished."
