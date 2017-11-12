# LoKu

##### Quick and easy local environment set-up for Kubernetes on OSX.

### :tada: INSTALL :tada:

##### Dependencies:
* [Homebrew](https://brew.sh/)
* [VirtualBox](http://download.virtualbox.org/virtualbox/5.2.0/VirtualBox-5.2.0-118431-OSX.dmg)

###### Once you have installed, and set up the dependencies listed above, you are ready to get rolling.

### So now run:
```
wget https://raw.githubusercontent.com/poetic/loku/master/loku -O loku && chmod +x loku && mv loku /usr/local/bin/
```

##### After that run: `loku install`
That will pull down the loku dependencies automagic... 

You are now ready for 
### :star: Usage :star:

--------

### USAGE

##### Next run `loku start` and soon after run `loku dashboard`, which will pull up your dashbaord.

After all that you're ready to rock.

##### Commands:
  
  Cluster Management:

    install                   Install loku and dependencies
    start                     Start kubernetes cluster
    stop                      Stop kubernetes cluster
    dashboard                 Open kubernetes dashboard
    destroy                   Destroy and remove kubernetes cluster

  Apps:

    drupal                    Install drupal on cluster
    jenkins                   Install jenkins app
    url [app-name-type]       Get App URL, ex: loku url app-name-drupal
    delete [app-name]         Delete App, ex: loku delete app-name



# Examples
### Drupal
After installing and starting your cluster, you can quickly install a drupal site on it. Just run:

`loku drupal`

Watch the logs in your dashboard as the drupal site builds, when the drupal pod is completed you can retrieve the url to the site with:

`loku url [app_name-type]`

The app_name portion will be the app name assigned to it, the type will be the kind of service that the app is. For example a drupal app named green-cat would use `loku url green-cat-drupal`

### Jenkins

Quickly install Jenkins with 'loku jenkins'. After the app is initialized there will be instructions in the output to get the admin password.
