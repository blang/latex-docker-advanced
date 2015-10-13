#!/bin/bash

cd /tmp

apt-get install -yq xzdec
tlmgr init-usertree
tlmgr install minted
