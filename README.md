# LoKu

### Quick and easy local environment set-up for Kubernetes on OSX.

##### INSTALL
To get rolling, run:

```
wget https://raw.githubusercontent.com/poetic/loku/master/loku -O loku && chmod +x loku && mv loku /usr/bin/local/
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

Watch the logs in your dashboard as the drupal site builds, when the drupal pod is completed you can retrieve the url to the site with:

`loku drupal_url [app_name]`

The [app_name] will be the preceding words before "-drupal" on the drupal pod.