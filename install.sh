#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

chmod -R 700 ./lfind 
mv ${SCRIPT_DIR}/lfind ~/.local/

echo 'export PATH=$PATH:~/.local/bin' >> ~/.bashrc
source ~/.bashrc

rm -rf SCRIPT_DIR=$(cd $(dirname $0); pwd)