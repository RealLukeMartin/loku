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

##### Dependencies
* VirtualBox 5+
* Homebrew

# Examples
### Drupal
After installing and starting your minibox, you can quickly install a drupal site on your cluster. Just run:

```
bash <(curl -s curl -L https://raw.githubusercontent.com/RealLukeMartin/loku/master/examples/fast_drupal.sh)
```

After the script runs, go to your minikube dashboard and watch the logs on the drupal pod.
When it is complete run these to get your drupal url:
```
export NODE_PORT=$(kubectl get --namespace default -o jsonpath="{.spec.ports[0].nodePort}" services loping-starfis-drupal)
```
```
export NODE_IP=$(kubectl get nodes --namespace default -o jsonpath="{.items[0].status.addresses[0].address}")
```

```
echo http://$NODE_IP:$NODE_PORT
```