#!/bin/bash

ln -nfs "$(pwd)/.missing" ~/.missing

if ! grep -x -q $'source ~/.missing' ~/.bashrc
then
  echo 'source ~/.missing' >> ~/.bashrc
fi
