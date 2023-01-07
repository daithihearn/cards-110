# Cards 110
This is the top level project for the Cards 110 application. There are three components in this game:

- [cards-110-api](https://github.com/daithihearn/cards-110-api)
- [cards-110-frontend](https://github.com/daithihearn/cards-110-frontend)
- [cards-110-websocket-service](https://github.com/daithihearn/cards-110-websocket-service)

# Tech Stack
- Docker Compose

# Requirements
Docker must be installed

# Running
Configure MongoDB by navigating to the `database` folder and running `./start.sh` followed by `./setup`

Ensure the three `.env` files are populated with valid values and then from the top level folder run `docker-compose up -d`
