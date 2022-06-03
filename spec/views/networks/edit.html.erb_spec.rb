require 'rails_helper'

RSpec.describe "networks/edit", type: :view do
  before(:each) do
    @network = assign(:network, Network.create!())
  end

  it "renders the edit network form" do
    render

    assert_select "form[action=?][method=?]", network_path(@network), "post" do
    end
  end
end
