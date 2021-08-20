
##################################################################
#### Bootstrap Commands
##################################################################

bootstrap:
	mix deps.get
	docker-compose up -d postgres
	mix ecto.setup
	cd assets && npm install

##################################################################
#### Commands
##################################################################

postgres.start:
	docker-compose up -d postgres

postgres.restart:
	docker-compose restart postgres

start:
	mix phx.server

deps.update:
	mix deps.clean --unused && mix deps.get && mix deps.compile

ecto.setup:
	mix ecto.setup

ecto.reset:
	mix ecto.reset

ecto.migrate:
	mix ecto.migrate

ecto.seed:
	mix run priv/repo/seeds.exs

ecto.rollback:
	mix ecto.rollbacxk

ecto.gen.migration:
	mix ecto.gen.migration ${file}

credo:
	mix credo
