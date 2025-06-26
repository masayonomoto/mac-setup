#!/bin/bash

function command_exists {
  command -v "$1" > /dev/null;
}

cd $(dirname $0)

git pull

if ! command_exists ansible ; then
  echo "--- Install Ansible ---"
  brew install ansible
  ansible --version
fi

/bin/bash ansible.sh

