class ArcherygbController < Sinatra::Base

  configure :development do
      register Sinatra::Reloader
  end
  
  get "/archers" do
    "Here is a list of Archers."
  end

    get "/archers/new" do
    "Create a new archer."
  end

  get "/archers/:id" do
    id = params[:id]
    "This archer is #{id}"
  end
  
  get "/archers/:id/edit" do
    id = params[:id]
    "The form to change an archers data."
  end
  
  post "/archers" do
    "You just created an archer."
  end
  
  put "/archers/:id" do
    id = params[:id]
    "#{id} Archer edits complete"
  end

  delete "/archers/:id" do
    id = params[:id]
    "#{id} has been deleted."
  end
  
end