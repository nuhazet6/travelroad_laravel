#!/bin/bash
path=$(readlink -e $0)
ssh nuhazet@nuhazet.arkania.es "
  cd $(dirname $path)
  git pull
  composer install
"
