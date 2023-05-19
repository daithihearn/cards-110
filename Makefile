help:
	@egrep -h '\s#@\s' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?#@ "}; {printf "\033[36m  %-30s\033[0m %s\n", $$1, $$2}'
	
# Database
DB_COMMAND=docker compose -f database/docker-compose-mongo.yaml
DB_SETUP_COMMAND=docker compose -f database/docker-compose-mongo-setup.yaml

db-clean: #@ Clean all the database data
	$(DB_COMMAND) down -v --remove-orphans
db-down: #@ Stop all the database.
	$(DB_COMMAND) down
db-up: #@ Start all the database.
	$(DB_COMMAND) up -d --wait
db-setup: #@ Setup all the database.
	$(DB_SETUP_COMMAND) up; $(DB_SETUP_COMMAND) rm --force

# Application
app-up: #@ Start the application.
	docker compose up -d --build --wait
app-down: #@ Stop the application.
	docker compose down
