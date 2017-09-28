require 'sinatra'
require 'sinatra/reloader' if development?
require 'erb'
require_relative './controllers/posts_controller.rb'

run PostsController