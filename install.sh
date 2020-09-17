#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

chmod -R 700 ./lfind 
mv ${SCRIPT_DIR}/lfind ~/.local/bin

echo '' >> ~/.bashrc
echo "# add local commands to path"
echo 'export PATH="$PATH:$HOME/.local/bin"' >> ~/.bashrc

source $HOME/.bashrc

rm -rf ${SCRIPT_DIR}