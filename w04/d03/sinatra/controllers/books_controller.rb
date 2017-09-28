class BooksController < Sinatra::Base
  # get "/" do
  #   "<h1>Hello, Beautiful!</h1>"
  # end

  # get "/:val1/:val2" do 
  #   val1 = params[:val1].to_i
  #   val2 = params[:val2].to_i
  #   result = val1 + val2
  #   puts params
  #   "#{val1} + #{val2} = #{result}"
  # end
  configure :development do
    register Sinatra::Reloader
  end
  

  # Get - all the books
  get "/books" do
    "ALL THE BOOKS"
  end

  # NEW - gets the form to create a new book
  get "/books/new" do
    "Use this to create a new book"
  end
   
   # Show - Gets one book 
  get "/books/:id" do
    id = params[:id]
    "The Book you are looking for is #{id}"
  end

  # Create - create a new book
  post "/books" do
    "Created Book"
  end

  # Edit - edit one book
  get "/books/:id/edit" do
    id = params[:id]
    "This is the book you are trying to edit #{id}"
  end

  # Update - update one book
  put "/books/:id" do
   id = params[:id]
   "Edited #{id}, Book"
  end

  # DELETE - delete a specific book
  delete "/books/:id" do
    id = params[:id]
    "The book deleted was #{id}"
  end
end