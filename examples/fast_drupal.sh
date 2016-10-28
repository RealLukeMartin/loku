#!/bin/bash

set -e

eval $(minikube docker-env)
helm init
git clone git@github.com:RealLukeMartin/loku.git $HOME/.loku
helm install $HOME/.loku/loku/examples/drupal
minikube ssh -- sudo -s && chmod -R 777 /tmp/hostpath_pv