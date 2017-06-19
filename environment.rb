ENV['SINATRA_ENV'] ||= "development"

require 'bundler'
Bundler.require(:default, ENV['SINATRA_ENV'])

require 'sinatra/base'
require 'sinatra/reloader'

require_all './app'
require_all './app/models'
require_all './views'
require_all './views/pirates'
