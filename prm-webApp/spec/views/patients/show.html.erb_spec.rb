require 'rails_helper'

RSpec.describe "patients/show", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :fname => "Fname",
      :lname => "Lname",
      :gender => "Gender",
      :nextofkin => "Nextofkin",
      :nextofkinphone => "Nextofkinphone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Fname/)
    expect(rendered).to match(/Lname/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Nextofkin/)
    expect(rendered).to match(/Nextofkinphone/)
  end
end
