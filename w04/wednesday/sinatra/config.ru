require 'sinatra'
require "sinatra/reloader" if development?
require 'sinatra/json'
require_relative "./controllers/books_controller.rb"
require_relative "./controllers/books_api_conroller.rb"

use BooksApiController
run BooksController

