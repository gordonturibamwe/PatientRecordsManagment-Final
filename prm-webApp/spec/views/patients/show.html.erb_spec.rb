require 'rails_helper'

RSpec.describe "patients/show", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
<<<<<<< HEAD
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
>>>>>>> 234c9b8af761cd64312d5ac2a3a601d1ccb93988
    ))
  end

  it "renders attributes in <p>" do
    render
<<<<<<< HEAD
    expect(rendered).to match(/Fname/)
    expect(rendered).to match(/Lname/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Nextofkin/)
    expect(rendered).to match(/Nextofkinphone/)
=======
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Proxy Name/)
    expect(rendered).to match(/Proxy Telephone/)
    expect(rendered).to match(/Sickness/)
>>>>>>> 234c9b8af761cd64312d5ac2a3a601d1ccb93988
  end
end
