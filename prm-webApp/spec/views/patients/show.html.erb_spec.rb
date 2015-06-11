require 'rails_helper'

RSpec.describe "patients/show", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :firstName => "First Name",
      :lastName => "Last Name",
      :gender => "Gender",
      :proxyName => "Proxy Name",
      :proxyTelephone => "Proxy Telephone",
      :sickness => "Sickness"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Proxy Name/)
    expect(rendered).to match(/Proxy Telephone/)
    expect(rendered).to match(/Sickness/)
  end
end
