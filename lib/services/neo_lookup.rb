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

  def get_hash
    @nasa_lookup
  end

  def get_links_hash
    @nasa_lookup['links']
  end

  def get_page_hash
    @nasa_lookup['page']
  end 

  def get_near_earth_objects_array
    @nasa_lookup['near_earth_objects']
  end 

  def get_neo_referance_id
    @nasa_lookup['neo_reference_id']
  end 

  def get_name_key
    @nasa_lookup['name']
  end
    
  def get_nasa_jpl_url
    @nasa_lookup['nasa_jpl_url']
  end
    
  def get_absolute_magnitude_h
    @nasa_lookup['absolute_magnitude_h']
  end
    
  def get_estimated_diameter
    @nasa_lookup['estimated_diameter']
  end
  
  def get_is_potentially_hazardous_asteroid
    @nasa_lookup['near_earth_objects'][0]['is_potentially_hazardous_asteroid']
  end

  def get_close_approach_data_array
    @nasa_lookup['near_earth_objects'][0]['close_approach_data']
  end

  def get_orbiting_body
    @nasa_lookup['near_earth_objects'][1]['close_approach_data'][0]['orbiting_body']
  end
  
  def get_orbital_data
    @nasa_lookup['near_earth_objects'][1]['orbital_data']
  end

  def get_orbit_id
    @nasa_lookup['near_earth_objects'][1]['orbital_data']['orbit_id']
  end

  def get_orbit_determination_date
    @nasa_lookup['near_earth_objects'][1]['orbital_data']['orbit_determination_date']
  end

end