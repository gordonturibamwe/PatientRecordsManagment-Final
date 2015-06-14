require 'rails_helper'

RSpec.describe "patients/index", type: :view do
  before(:each) do
    assign(:patients, [
      Patient.create!(
        :fname => "Fname",
        :lname => "Lname",
        :gender => "Gender",
        :nextofkin => "Nextofkin",
        :nextofkinphone => "Nextofkinphone"
      ),
      Patient.create!(
        :fname => "Fname",
        :lname => "Lname",
        :gender => "Gender",
        :nextofkin => "Nextofkin",
        :nextofkinphone => "Nextofkinphone"
      )
    ])
  end

  it "renders a list of patients" do
    render
    assert_select "tr>td", :text => "Fname".to_s, :count => 2
    assert_select "tr>td", :text => "Lname".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Nextofkin".to_s, :count => 2
    assert_select "tr>td", :text => "Nextofkinphone".to_s, :count => 2
  end
end
