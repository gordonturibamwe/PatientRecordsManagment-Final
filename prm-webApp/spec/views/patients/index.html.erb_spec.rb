require 'rails_helper'

RSpec.describe "patients/index", type: :view do
  before(:each) do
    assign(:patients, [
      Patient.create!(
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
      )
    ])
  end

  it "renders a list of patients" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Proxy Name".to_s, :count => 2
    assert_select "tr>td", :text => "Proxy Telephone".to_s, :count => 2
    assert_select "tr>td", :text => "Sickness".to_s, :count => 2
  end
end
