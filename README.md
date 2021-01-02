# TUTORIAL FOR SETTING UP FRONTITY WITH DOCKER FOR LOCAL DEVELOPMENT
 
## 1. Install Docker for desktop
* Go to the [Docker website](https://www.docker.com/products/docker-desktop).
* Download and install the version that best matches your taste.
## 2. Git checkout the docker repo
* Checkout the git repo from [https://github.com/trustos/wp-template](https://github.com/trustos/wp-template)
## 3. Edit as needed the .env-example file and copy it in a .env file
For fast .env file creation use: `cp .env-example .env`\
Then edit and replace the following variables or leave them like that(NOT RECOMMENDED)
* #APP SETTINGS
    * APP_NAME - the name of your project

* #DB SETTINGS
    * DB_ROOT_PASSWORD - the mysql root user password
    * WP_DB - choose WP database
    * WP_DB_USER - WP database user
    * WP_DB_PASSWORD - WP database user password\
    Full list of supported environnment variables: [mysql](https://hub.docker.com/_/mysql), [wordpress](https://hub.docker.com/_/wordpress)

* #WP SETTINGS
    * WP_PORT - default exposed WP port
    * WP_DEBUG - debug WP (bool)
    * WP_STATIC_IP - the static ip configured for the WP installation`(default: 172.23.0.23)`\
    Full list of supported environnment variables: [wordpress](https://hub.docker.com/_/wordpress)

* #FRONTITY SETTINGS
    * FRONTITY_BUILD_DEVELOPMENT=true
    * FRONTITY_DEV_PORT - the port that `frontity dev` command will use i.e. dev port
    * FRONTITY_SERVE_PORT - the port that `frontity serve` command will use i.e. production port\
    Full list of supported environnment varibles: [frontity](https://docs.frontity.org/frontity-cli/environment-variables)
## 4. Enter the cli folder and execute setup Frontity bash script
Run the following command to setup the frontity project\
`cd cli && sh setup-frontity.sh`
## 5. Edit the frontity.settings.js
 Go to the frontity project folder and edit the frontity.settings.js json file with the url of the wordpress installation. If it is in docker container - get the docker IPv4 Address`(default: 172.23.0.23)` from network and set it in @frontity/wp-source -> source -> url.\
 [`Example: "url": http://172.23.0.23`] \
 !IMPORTANT: For the local development the url should be only with HTTP. HTTPS will resolve to Innternal error as the SSL is not configured.
## 6. Run the docker-compose to build the images
Run the following command from the main project directory to run the docker containers:\
`cd ../ && docker-compose up -d`
## 7. Set Wordpress Permalink structure to Post name
Go to the WP admin panel and set the permalink structure to be Post name