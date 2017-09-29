class PostsController < Sinatra::Base

  #set the root of the app
  set :root, File.join(File.dirname(__FILE__), '..')

  #set views directory
  set :views, Proc.new { File.join(root, "views") }


  configure :development do
      register Sinatra::Reloader
  end

  $posts = [{
   id: 0,
   title: "Post 1",
   body: "This is the first post"
  },
  {
    id: 1,
    title: "Post 2",
    body: "This is the second post"
  },
  {
    id: 2,
    title: "Post 3",
    body: "This is the third post"
  }]

  get '/' do
    @title = 'Blog Posts'
    @posts = $posts
    erb :'posts/index'  
  end

  get '/new'  do
    
    erb :'posts/new'
    
  end
    
  get '/:id' do
    
    id = params[:id].to_i
    # @title = $posts[id][:title]
    # @body = $posts[id][:body]
    @post = $posts.select{ |post| post[:id] == id}
    erb :'posts/show'    
  end
    
  post '/' do
    new_post = {
      id: $posts.length,
      title: params[:title],
      body: params[:body]
    }
    $posts.push new_post
    redirect '/'    
  end
    
  put '/:id'  do
    id = params[:id].to_i
    # get the post out of the database
    post = $posts[id]
    # update values
    post[:title] = params[:title]
    post[:body] = params[:body]
    # save the post back into the data store
    $posts[id] = post


    redirect '/'
  end
    
  delete '/:id'  do
    id = params[:id].to_i
    $posts.select! { |post| post[:id] != id  }
    redirect '/'
    
  end
    
  get '/:id/edit'  do
    id = params[:id].to_i
    @post = $posts[id]
    erb :'posts/edit'
    
  end

end