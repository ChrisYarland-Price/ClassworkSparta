class ArcherygbApiController < Sinatra::Base

  configure :development do
      register Sinatra::Reloader
  end
  
  $archers = [
    {
      id:0,
      name: "Chris Yarland",
      rank: "Over 18",
      best_score: "280"
    },
    {
      id:1,
      name: "Alex Wise",
      rank: "Over 18",
      best_score: "299"
    },
    {
      id:2,
      name: "Katie Henley",
      rank: "Female Under 16",
      best_score: "180"
    },

  ]
  get "/api/archers" do
    JSON $archers
  end

  post "/api/archers/new" do
    id = params[:id]
    fullname = params[:name]
    rank = params[:rank]
    score = params[:score]
    
    $archers.push({
      id: id,
      name: fullname,
      rank: rank,
      best_score: score,
      })
    JSON $archers
  end

  get "/api/archers/:id" do
    id = params[:id].to_i
   JSON $archers[id]
  end
  
  put "/api/archers/edit" do
    id = params[:id].to_i
    fullname = params[:name]
    rank = params[:rank]
    score = params[:score]

    $archers[id] = {
      name: fullname,
      rank: rank,
      best_score: score,
    }
    JSON $archers
  end

  delete "/api/archers" do
    id = params[:id].to_i
    $archers.delete_at(id)
    JSON $archers
  end

  
end