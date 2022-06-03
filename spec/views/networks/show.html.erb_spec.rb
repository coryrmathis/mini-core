require 'rails_helper'

RSpec.describe "networks/show", type: :view do
  before(:each) do
    @network = assign(:network, Network.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
