require 'rubygems'
require 'bundler'
Bundler.require

# this is the Model
require './models/user'
require './models/purchase'
require './models/product'
require './models/category'
require './models/brand'

# can change
require './app'

use Rack::MethodOverride

#Class refers to the Class name in app.rb
run RedmartSinatraApp
