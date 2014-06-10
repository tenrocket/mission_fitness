MISSION FITNESS
=========

At Mission Fitness, we reward exercise with philanthropy. Every time you work out in our facility, we donate $1 to a charity partner of your choice. Our charity partners are all focused on global health, meaning your workouts make you healthy while also improving the health of others worldwide. The more you exercise, the more we give back.

1. Every day you exercise, we take $1 off your monthly fee. 
2. That $1 is donated to a charity of your choice. 
3. Our charitable partners use the money to create sports and recreation programs, promote nutrition and healthy eating, protect the environment, and fight disease – all of which improve the health of people. 

INSTALLATION / SETUP
----

Clone repo locally.  Install gems:

	bundle install
	rake db:create db:migrate

Set up database in config/database.yml file.  I am using postgresql

    development:
      adapter: postgresql
      encoding: utf8
      database: mission_fitness_development
      pool: 5
    
    
    test:
      adapter: postgresql
      encoding: utf8
      reconnect: false
      database: mission_fitness_test
      pool: 5
    
    production:
      adapter: postgresql
      encoding: utf8
      reconnect: false
      database: mission_fitness_app
      pool: 5

MIGRATE DATABASE
	rake db:migrate
-----------


CONTRIBUTING
--------------

I am not accepting contributions at the moment, but feel free to fork this repo and use it however you see fit.

License
----

MIT


**HOW CAN YOU RESIST FREE SOFTWARE?**