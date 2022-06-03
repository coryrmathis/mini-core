require 'rails_helper'

RSpec.describe "networks/new", type: :view do
  before(:each) do
    assign(:network, Network.new())
  end

  it "renders new network form" do
    render

    assert_select "form[action=?][method=?]", networks_path, "post" do
    end
  end
end
