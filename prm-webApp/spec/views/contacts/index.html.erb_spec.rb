require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :mobilephone => "Mobilephone",
        :homephone => "Homephone",
        :street => "Street",
        :city => "City",
        :state => "State",
        :country => "Country",
        :zipcode => "Zipcode",
        :patient => nil
      ),
      Contact.create!(
        :mobilephone => "Mobilephone",
        :homephone => "Homephone",
        :street => "Street",
        :city => "City",
        :state => "State",
        :country => "Country",
        :zipcode => "Zipcode",
        :patient => nil
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => "Mobilephone".to_s, :count => 2
    assert_select "tr>td", :text => "Homephone".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
