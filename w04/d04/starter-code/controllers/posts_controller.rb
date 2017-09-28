class PostsController < Sinatra::Base

  #set the root of the app
  set :root, File.join(File.dirname(_File_), '..')

  #set views directory
  set :views, Proc.new { File.join(root, "views") }
  

  configure :development do
      register Sinatra::Reloader
  end

  get '/' do
  
  "<h1>Homepage</h1>"
  
  end

  get '/new'  do
    
    "NEW"
    
  end
    
  get '/:id' do
    
    id = params[:id]
    
    "SHOW: #{id}"
    
  end
    
  post '/' do
    
    "CREATE"
    
  end
    
  put '/:id'  do
    
    "UPDATE: #{params[:id]}"
    
  end
    
  delete '/:id'  do
    
    "DELETE: #{params[:id]}"
    
  end
    
  get '/:id/edit'  do
    
    "EDIT: #{params[:id]}"
    
  end

end