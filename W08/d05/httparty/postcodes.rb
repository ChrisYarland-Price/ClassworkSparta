require "httparty"
require "json"

class PostcodeApi 
  attr_accessor :single_postcode_results, :multiple_postcodes_results

  include HTTParty
  base_uri 'api.postcodes.io'

  def single_postcode_search(postcode)
    self.single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}", format: :json).body)
  end

  def multiple_postcodes_search(postcodes_array)
    body = {
      "postcodes" => postcodes_array
    }
    self.multiple_postcodes_results = self.class.post("/postcodes",{ body: body}).parsed_response
  end
  
  
end

house = PostcodeApi.new
puts house.single_postcode_search("NE65DB")
puts house.multiple_postcodes_search(["NE65DB", "LS117BH", "MK92BU"])
