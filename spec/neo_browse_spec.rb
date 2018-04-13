require 'spec_helper'

describe 'Neo browse spec' do

    context 'Browse the overall Asteroid data-set GET https://api.nasa.gov/neo/rest/v1/neo/browse/
    EXAMPLE QUERY
    https://api.nasa.gov/neo/rest/v1/neo/browse?api_key=DEMO_KEY' do

    before(:all) do
        @neo_browse = Nasa.new.neo_browse
        @neo_browse.get_browse
    end


    it 'should respond with a status message of 200' do
        # expect(@neo_browse.print_results).to be 2
        pending
        
    end 


    end


end

