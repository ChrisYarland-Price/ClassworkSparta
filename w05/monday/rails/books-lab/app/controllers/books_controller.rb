class BooksController < ApplicationController
  def index
    
  end
  def show
    @book = params[:id]
  end
  def new

  end
  def create
    redirect_to "/books"
  end
  def post
    redirect_to "/books"
  end
  def put
    redirect_to "/books"    
  end
  def destroy
    redirect_to "/books"    
  end

end