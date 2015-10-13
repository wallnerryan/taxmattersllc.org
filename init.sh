#!/bin/bash

# This is to give enough time for MySQL to initialize from compose file.
sleep 15

# Create the DB and Start the app
cd /taxmatters-app
rake db:create
rails server -b 0.0.0.0 