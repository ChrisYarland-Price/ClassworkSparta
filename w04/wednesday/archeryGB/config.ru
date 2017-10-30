require "sinatra"
require "sinatra/reloader"
require "sinatra/json"
require "rack"
require_relative 'controllers/archerygb_controller.rb'
require_relative 'controllers/archerygb_api_controller.rb'

use ArcherygbApiController
run ArcherygbController