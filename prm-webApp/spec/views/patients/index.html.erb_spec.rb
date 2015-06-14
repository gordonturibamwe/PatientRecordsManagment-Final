require 'rails_helper'

RSpec.describe "patients/index", type: :view do
  before(:each) do
    assign(:patients, [
      Patient.create!(
<<<<<<< HEAD
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
=======
        :firstName => "First Name",
        :lastName => "Last Name",
        :gender => "Gender",
        :proxyName => "Proxy Name",
        :proxyTelephone => "Proxy Telephone",
        :sickness => "Sickness"
      ),
      Patient.create!(
        :firstName => "First Name",
        :lastName => "Last Name",
        :gender => "Gender",
        :proxyName => "Proxy Name",
        :proxyTelephone => "Proxy Telephone",
        :sickness => "Sickness"
>>>>>>> 234c9b8af761cd64312d5ac2a3a601d1ccb93988
      )
    ])
  end

  it "renders a list of patients" do
    render
<<<<<<< HEAD
    assert_select "tr>td", :text => "Fname".to_s, :count => 2
    assert_select "tr>td", :text => "Lname".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Nextofkin".to_s, :count => 2
    assert_select "tr>td", :text => "Nextofkinphone".to_s, :count => 2
=======
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Proxy Name".to_s, :count => 2
    assert_select "tr>td", :text => "Proxy Telephone".to_s, :count => 2
    assert_select "tr>td", :text => "Sickness".to_s, :count => 2
>>>>>>> 234c9b8af761cd64312d5ac2a3a601d1ccb93988
  end
end
