#!/bin/bash

cd /taxmatters-app
rake db:create
rails server -b 0.0.0.0 