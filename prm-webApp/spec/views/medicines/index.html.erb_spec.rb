require 'rails_helper'

RSpec.describe "medicines/index", type: :view do
  before(:each) do
    assign(:medicines, [
      Medicine.create!(
        :name => "Name",
        :prescription => "Prescription",
        :gram => "Gram",
        :refill => "Refill",
        :info => "MyText",
        :patient => nil
      ),
      Medicine.create!(
        :name => "Name",
        :prescription => "Prescription",
        :gram => "Gram",
        :refill => "Refill",
        :info => "MyText",
        :patient => nil
      )
    ])
  end

  it "renders a list of medicines" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Prescription".to_s, :count => 2
    assert_select "tr>td", :text => "Gram".to_s, :count => 2
    assert_select "tr>td", :text => "Refill".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
