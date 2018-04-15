require 'httparty'
require 'json'

class NeoBrowseService
  include HTTParty

  base_uri 'https://api.nasa.gov/neo/rest/v1/neo/'

  def initialize
    @api_key = 'kcO5eqbhy64BiIF115BRdAezsIZ0uT5jzHD0prED'
  end

  def get_browse
    @nasa_browse = JSON.parse(self.class.get("/browse?api_key=#{@api_key}").body)
  end

  def print_results
    puts JSON.pretty_generate(@nasa_browse).gsub(":", " =>") #makes it look pretty for me
  end

  def get_hash
    @nasa_browse
  end

  def get_page_hash
    @nasa_browse['page']
  end 

  def get_near_earth_objects_array
    @nasa_browse['near_earth_objects']
  end 

  def get_neo_referance_id
    @nasa_browse['near_earth_objects'][0]['neo_reference_id']
  end 
end