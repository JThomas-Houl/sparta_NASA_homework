require 'spec_helper'

describe 'Neo look up spec' do

    context 'Lookup a specific Asteroid based on its NASA JPL small body 
    (SPK-ID) ID GET https://api.nasa.gov/neo/rest/v1/neo/' do

        before(:all) do
            @neo_lookup = Nasa.new.neo_lookup
            @spk_ids = ["2000433","2000719","2000887","2001036","2001221"]
            @neo_lookup.get_lookup_with_id(@spk_ids[0])
        end


        it 'should respond with a status message of 200' do
            # expect(@neo_lookup.print_results).to be 2
            pending
        end 


    end


end