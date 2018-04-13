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

    it 'should have a estimated_diameter_min key containing float' do
      # expect(@neo_feed.print_results).to eq 2
      pending
    end

    it 'should have a absolute_magnitude_h key containing float' do
      # expect(@neo_feed.print_results).to eq 2
      pending
    end

    it 'should have a absolute_magnitude_h key containing float' do
      # expect(@neo_feed.print_results).to eq 2
      pending
    end

    it 'should have a absolute_magnitude_h key containing float' do
      # expect(@neo_feed.print_results).to eq 2
      pending
    end

    it 'should have a absolute_magnitude_h key containing float' do
      # expect(@neo_feed.print_results).to eq 2
      pending
    end

    it 'should have a absolute_magnitude_h key containing float' do
      # expect(@neo_feed.print_results).to eq 2
      pending
    end

    it 'should have a absolute_magnitude_h key containing float' do
      # expect(@neo_feed.print_results).to eq 2
      pending
    end

    it 'should have a absolute_magnitude_h key containing float' do
      # expect(@neo_feed.print_results).to eq 2
      pending
    end

    it 'should have a absolute_magnitude_h key containing float' do
      # expect(@neo_feed.print_results).to eq 2
      pending
    end

    

    


    
		

  end

end