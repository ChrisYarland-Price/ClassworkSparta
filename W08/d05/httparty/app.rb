require "httparty"
require "json"
# include HTTParty

# response = HTTParty.get('https://api.punkapi.com/v2/beers/20')

# puts response.body

class PunkApiCall
  include HTTParty
  base_uri 'https://api.punkapi.com/v2'

  def all_beers
    self.class.get('/beers', format: :json)
  end
  
  def create_array_of_beers(json_data)
    json_data.parsed_response.map do |value| value['name'] end  
  end
  
  def count_beers(json_data)
    json_data.length
  end
  
end

@punk_call = PunkApiCall.new
all_beers = @punk_call.all_beers
puts @punk_call.create_array_of_beers(all_beers)
puts @punk_call.count_beers(all_beers)