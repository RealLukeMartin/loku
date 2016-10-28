# LoKu

### Quick and easy local environment set-up for Kubernetes on OSX.

##### INSTALL
To get rolling, run:

```
wget https://raw.githubusercontent.com/poetic/loku/master/loku -O loku && chmod +x loku && mv loku /usr/local/bin/
```

Install loku dependencies with: `loku install`

##### USAGE

To get your kubernetes cluster running: `loku start`

After the cluster finishes building, go to your dashboard: `loku dashboard`

Commands:
  
  Cluster Management:

    install                   Install loku and dependencies
    start                     Start kubernetes cluster
    stop                      Stop kubernetes cluster
    delete                    Delete kubernetes cluster
    dashboard                 Open kubernetes dashboard

  Apps:

    drupal                    Install drupal on cluster
    drupal_url [app_name]     Get drupal URL


# Examples
### Drupal
After installing and starting your cluster, you can quickly install a drupal site on it. Just run:

`loku drupal`

<<<<<<< HEAD
Watch the logs in your dashboard as the drupal site builds, when the drupal pod is completed you can retrieve the url to the site with:
=======
After the script runs, go to your minikube dashboard and watch the logs on the drupal pod.
When it is complete run these to get your drupal url, make sure to replace [APPNAME] with your app name is:
```
export NODE_PORT=$(kubectl get --namespace default -o jsonpath="{.spec.ports[0].nodePort}" services [APPNAME]-drupal)
```
```
export NODE_IP=$(kubectl get nodes --namespace default -o jsonpath="{.items[0].status.addresses[0].address}")
```
>>>>>>> master

`loku drupal_url [app_name]`

The [app_name] will be the preceding words before "-drupal" on the drupal pod.