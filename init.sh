#!/bin/bash

# This is to give enough time for MySQL (or other DB)
# to initialize from compose file.
sleep 15

# Create the DB and Start the app
cd /taxmatters-app
rake db:create
# We could replace this with Apache2/Nginx
# in the future, for now it works fine.
rails server -b 0.0.0.0 