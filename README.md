# LoKu

### Quick local environment set-up for Kubernetes on OSX.

##### INSTALL
To get rolling, run:

```
bash <(curl -s curl -L https://raw.githubusercontent.com/RealLukeMartin/loku/master/loku)
```

Installs docker, kubectl, helm and minikube.

##### USAGE
After install, run `minikube start` to spin up your local kubernetes cluster. 
Then run `minikube dashboard` to go to your kubernetes dashboard.

To tear down your cluster run `minikube delete`.
