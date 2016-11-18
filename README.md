# LoKu

##### Quick and easy local environment set-up for Kubernetes on OSX.

### INSTALL
To get rolling, run:

```
wget https://raw.githubusercontent.com/poetic/loku/master/loku -O loku && chmod +x loku && mv loku /usr/local/bin/
```

Install loku dependencies with: `loku install`

### USAGE

To get your kubernetes cluster running: `loku start`

After loku starts run `loku dashboard` to open your kubernetes dashboard

#####Commands:
  
  Cluster Management:

    install                   Install loku and dependencies
    start                     Start kubernetes cluster
    stop                      Stop kubernetes cluster
    dashboard                 Open kubernetes dashboard
    destroy                   Destroy and remove kubernetes cluster

  Apps:

    drupal                    Install drupal on cluster
    url [app_name]            Get App URL
    delete [app_name]         Delete App


# Examples
### Drupal
After installing and starting your cluster, you can quickly install a drupal site on it. Just run:

`loku drupal`

Watch the logs in your dashboard as the drupal site builds, when the drupal pod is completed you can retrieve the url to the site with:

`loku url [app_name]`

The [app_name] will be the preceding words before "-drupal" on the drupal pod.

# Still in Active Development
There are some quirks that you might hit the first time you install an app, after your first time it runs smooth. The main thing you could see is helm won't find an open Tiller Pod on your first run at `loku drupal`, run `loku drupal` again it will work.
