#!/bin/bash

set -e

eval $(minikube docker-env)
helm init

if [[ ! -d $HOME/.loku/ ]]; then
  git clone git@github.com:poetic/loku.git $HOME/.loku
fi

helm install $HOME/.loku/examples/drupal
minikube ssh -- sudo chmod -R 777 /tmp/hostpath_pv