require 'rubygems'
require 'bundler'
Bundler.require

# this is the Model
require './models/user'
require './models/purchase'

# can change
require './app'

#Class refers to the Class name in app.rb
run RedmartSinatraApp
