require 'spec_helper'

describe 'Neo browse spec' do

    context 'Browse the overall Asteroid data-set GET https://api.nasa.gov/neo/rest/v1/neo/browse/
    EXAMPLE QUERY
    https://api.nasa.gov/neo/rest/v1/neo/browse?api_key=DEMO_KEY' do

    before(:all) do
        @neo_browse = Nasa.new.neo_browse
        @neo_browse.get_browse
    end


    it 'should have a links hash' do
      expect(@neo_browse.get_hash['links']).to be_a(Hash)   
    end 

    it 'should have a page hash containing 4 keys all returing integers' do
      expect(@neo_browse.get_page_hash.keys.count).to eq 4
      @neo_browse.get_page_hash.each do |k,v|
        expect(@neo_browse.get_page_hash[k][v]).to be_a(Integer)
      end
    end 

    it 'should have a near_earth_objects array' do
      expect(@neo_browse.get_near_earth_objects_array).to be_a(Array)
    end

    it 'should have a neo_reference_id key containing a string of 7 charectors' do
        expect(@neo_browse.get_near_earth_objects_array[0]).to include('neo_reference_id')
        expect(@neo_browse.get_neo_referance_id).to be_a(String)
        expect(@neo_browse.get_neo_referance_id.length).to eq 7


      end
      
      it 'should have a name key containing a string' do
        # expect(@neo_feed.print_results).to eq 2
        pending
      end
  
      it 'should have a nasa_jpl_url key containing a http string' do
        # expect(@neo_feed.print_results).to eq 2
        pending
      end
  
      it 'should have a absolute_magnitude_h key containing float' do
        # expect(@neo_feed.print_results).to eq 2
        pending
      end
  
      it 'should have a estimated_diameter hash containing a 3 keys labelded kilometers,
      meters, miles, feet' do
        # expect(@neo_feed.print_results).to eq 2
        pending
      end
  
      it 'should have a estimated_diameter_min float smaller then estimated_diameter_max' do
        # expect(@neo_feed.print_results).to eq 2
        pending
      end
  
      it 'should have a estimated_diameter_max float larger then estimated_diameter_min' do
        # expect(@neo_feed.print_results).to eq 2
        pending
      end
  
      it 'should have a is_potentially_hazardous_asteroid key which returns true or false' do
        # expect(@neo_feed.print_results).to eq 2
        pending
      end
  
      it 'should have a close_approach_data array' do
        # expect(@neo_feed.print_results).to eq 2
        pending
      end

      it 'should have an orbiting_body key which returns a string' do
        # expect(@neo_feed.print_results).to eq 2
        pending
      end

      it 'should have an orbital_id containing a string' do
        # expect(@neo_feed.print_results).to eq 2
        pending
    end

    it 'should have an orbit_determination_date containing a string' do
        # expect(@neo_feed.print_results).to eq 2
        pending
    end
    
    it 'should have an orbital_data contain 18 keys' do
        # expect(@neo_feed.print_results).to eq 2
        pending
    end

    it 'should have an orbital_data hash with every key containing string data' do
        # expect(@neo_feed.print_results).to eq 2
        pending
    end
   
    end

end

