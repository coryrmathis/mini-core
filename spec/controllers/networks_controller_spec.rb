require "rails_helper"

RSpec.describe NetworksController, type: :controller do
    describe "#index" do 
        it "only returns active networks" do 
            @network_1 = Network.create(name: "My network 1", state: 'active')
            @network_2 = Network.create(name: "My network 2", state: 'inactive')
            get :index
        
            statuses_in_response_body = JSON.parse(response.body)['data'].map { |o| o['attributes']['state'] }
            expect(statuses_in_response_body.uniq).to contain_exactly('active')
        end
    end

end