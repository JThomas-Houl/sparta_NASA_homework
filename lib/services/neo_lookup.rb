require 'httparty'
require 'json'

class NeoLookUpService
  include HTTParty

  base_uri 'https://api.nasa.gov/neo/rest/v1/neo/'

  def initialize
    @api_key = 'kcO5eqbhy64BiIF115BRdAezsIZ0uT5jzHD0prED'
  end

  def get_lookup_with_id(look_up_id)
    @nasa_lookup= JSON.parse(self.class.get("/#{look_up_id}?api_key=#{@api_key}").body)
  end

  def print_results
    puts JSON.pretty_generate(@nasa_lookup).gsub(":", " =>")
  end

end