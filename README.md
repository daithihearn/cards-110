# Cards 110
This is the top level project for the Cards 110 application. There are three submodules in this application:

- [cards-110-api](https://github.com/daithihearn/cards-110-api)
- [cards-110-frontend](https://github.com/daithihearn/cards-110-frontend)
- [websocket-service](https://github.com/daithihearn/websocket-service)

# Tech Stack
- Docker Compose

# Requirements
Docker must be installed.
NPM must be installed to build the frontend webjar. You can run in frontend dev mode without NPM.

# Setup
First you must initialise the submodules by running:

`git submodule init`

Followed by:

`git submodule update`

This will initialise and then download the submodules. Generally it will pull a commit hash rather than a branch. You can switch to the default branch by:

`cd ./cards-110-api && git checkout develop && cd ../cards-110-frontend && git checkout develop && cd ../websocket-service && git checkout develop`

# Building
Running `./build.sh` will build the [frontend](https://github.com/daithihearn/cards-110-frontend), copy the webjar into the API then build the [API](https://github.com/daithihearn/cards-110-api) and install the executable jar into the local maven repo.
To just build the API and not the frontend run `./build.sh -f`

# Running
You must first build before deploying with docker.
## Frontend Dev
Run `docker-compose -f ./docker-compose-dev.yaml up --build` to start the frontend and api in separate containers.

## API Dev
Run `docker-compose up --build` to start only the API. The frontend will be served from the webjar in the API.
