# TUTORIAL FOR SETTING UP FRONTITY WITH DOCKER FOR LOCAL DEVELOPMENT
 
## 1. Install Docker for desktop
* Go to the [Docker website](https://www.docker.com/products/docker-desktop).
* Download and install the version that best matches your taste.
## 2. Git checkout the docker repo
* Checkout the git repo from [https://github.com/trustos/wp-template](https://github.com/trustos/wp-template)
## 3. Edit as needed the .env file
In the file with environments you can control a lot of things.
* APP_NAME - the name of your project
* NETWORKS=wpsite

* #DB SETTINGS
* DB_ROOT_PASSWORD=password
* WP_DB=myweddingdb
* WP_DB_USER=wp_wedding
* WP_DB_PASSWORD=wp_pass

* #WP SETTINGS
* WP_PORT=8080
* WP_DEBUG=true

* #FRONTITY
* FRONTITY_BUILD_DEVELOPMENT=true
* FRONTITY_SERVE_PORT=3000`
## 4. Enter the cli folder to setup Frontity
Run the following command to setup the frontity project

`cd cli && sh setup-frontity`
## 5. Go to the frontity project folder and edit the frontity.settings.js with the url of the wordpress installation. If it is in docker container - get the docker IPv4 Address from network and set it in -> source -> url 
## 6. Go back and run the dockers - cd ../ && docker-compose up -d
## 7. Go to the WP admin panel and set Wordpress Permalink structure to Post name
The permalink structure should be enabled 
## 8. Change settings in frontity.settings.json
To enable communication between the local WP installation and the Frontity you should change url value in the @frontity/wp-source package settings. By default it should be connfigured with the .env value of WP_STATIC_IP (172.23.0.23)