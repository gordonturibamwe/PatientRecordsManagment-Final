require 'rails_helper'

RSpec.describe "contacts/show", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :mobilephone => "Mobilephone",
      :homephone => "Homephone",
      :street => "Street",
      :city => "City",
      :state => "State",
      :country => "Country",
      :zipcode => "Zipcode",
      :patient => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Mobilephone/)
    expect(rendered).to match(/Homephone/)
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Zipcode/)
    expect(rendered).to match(//)
  end
end
