require 'rails_helper'

RSpec.describe "networks/index", type: :view do
  before(:each) do
    assign(:networks, [
      Network.create!(),
      Network.create!()
    ])
  end

  it "renders a list of networks" do
    render
  end
end
