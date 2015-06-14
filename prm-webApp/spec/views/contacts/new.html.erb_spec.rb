require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
      :mobilephone => "MyString",
      :homephone => "MyString",
      :street => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :zipcode => "MyString",
      :patient => nil
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input#contact_mobilephone[name=?]", "contact[mobilephone]"

      assert_select "input#contact_homephone[name=?]", "contact[homephone]"

      assert_select "input#contact_street[name=?]", "contact[street]"

      assert_select "input#contact_city[name=?]", "contact[city]"

      assert_select "input#contact_state[name=?]", "contact[state]"

      assert_select "input#contact_country[name=?]", "contact[country]"

      assert_select "input#contact_zipcode[name=?]", "contact[zipcode]"

      assert_select "input#contact_patient_id[name=?]", "contact[patient_id]"
    end
  end
end
