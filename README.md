# A Wordpress development environment

A simple Wordpress local installation with wp-cli, based on official images.

## Env configuration

You can put a `.env` file in your development folder.\
This image supports:

```.env
SITENAME=ContainerName

DB_USER=DBUser
DB_PASSWORD=DBPwd
DB_NAME=DBName
DEBUG=1 | 0

WP_TITLE="Site Title" // Please, use double quotes for this.
ADMIN_NAME=Admin username for the wp panel
ADMIN_PASSWORD=Admin password for the wp panel
ADMIN_EMAIL=Admin email for the wp panel
```

## Usage

You have to put a `.env` file in the development folder as showed above.\
Then you can simply run in your terminal: `docker-compose up -d` and all the configuration will do it for you. Then, you can find your local Wordpress installation at `http://127.0.0.1:8080` or `http://localhost:8080`.\
This docker image will install in the same container Wordpress and wp-cli, used for all kind of operation on WP.\
In addition, you can run the script `docker/wp-cli/init.sh` to configure Wordpress with the credentials you defined into the `.env` file.
