require 'spec_helper'

describe 'Neo feed spec' do
	context 'Retrieve a list of Asteroids based on their closest approach date to Earth.' do
    before(:all) do
			@neo_feed = Nasa.new.neo_feed
      @neo_feed.get_feed_startdate_enddate("2018-04-11","2018-04-12")
		end

		it 'should have a links hash containing 3 keys' do
        # expect(@neo_feed.print_results).to eq 2
        pending
    end 

    it 'should have a neo_reference_id key containing a string of 7 charectors' do
      # expect(@neo_feed.print_results).to eq 2
      pending
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

    it 'should have a relative_velocity hash containing kilometers_per_second,
    kilometers_per_hour, miles_per_hour' do
      # expect(@neo_feed.print_results).to eq 2
      pending
    end

    it 'should have a kilometers_per_second, kilometers_per_hour, miles_per_hour keys which 
    return floats' do
      # expect(@neo_feed.print_results).to eq 2
      pending
    end

    it 'should have a miss_distance hash containing astronomical, lunar, kilometers,
    miles keys, that return floats' do
      # expect(@neo_feed.print_results).to eq 2
      pending
    end

    it 'should have an orbiting_body key which returns a string' do
      # expect(@neo_feed.print_results).to eq 2
      pending
    end
  end
end