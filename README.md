![N|Solid](http://www.maestriasenensenada.mx/images/modulos/cetys_universidad-logo.png)

This application uses as a base the template of the polymer store to create an ecommerce that in a docker image that will later be uploaded and orchestrated by Google Cloud and Kubernetes.

# SHOP

### Setup

##### Prerequisites

Intall [Docker](https://www.docker.com)

Install [polymer-cli](https://github.com/Polymer/polymer-cli):

    npm install -g polymer-cli


##### Setup
    # Using CLI
    mkdir shop
    cd shop
    polymer init shop

    # Or cloning direct from GitHub
    git clone https://github.com/Polymer/shop.git
    cd shop
    bower install

### Start the development server

    polymer serve

### Run web-component-tester tests

    polymer test

### Build

Build presets provide an easy way to define common build configurations in your `polymer.json` file. There are 2 build presets we put in `polymer.json` file in Shop:

**es5-bundled**

- js: {minify: true, compile: true}
- css: {minify: true}
- html: {minify: true}
- bundle: true
- addServiceWorker: true
- addPushManifest: true
- insertPrefetchLinks: true

**es6-unbundled**

- js: {minify: true, compile: false}
- css: {minify: true}
- html: {minify: true}
- bundle: false
- addServiceWorker: true
- addPushManifest: true
- insertPrefetchLinks: true

Run the command to build the presets:

    polymer build

### Test the build

This command serves the `es5-bundled` build version of the app:

    polymer serve build/es5-bundled

This command serves the `es6-unbundled` build version of the app:

    polymer serve build/es6-unbundled

### Build docker Image
Dockerfile is inside project, just run 

    docker build -t shop .

You can find my Docker image [on my Dockerhub](https://hub.docker.com/r/louismanson/shop/)

### Run Container
This command will create and run a container with the aplication runing in you local server on port 4000

    docker run -p 4000:80 louismanson/shop:v1

### Pipeline


