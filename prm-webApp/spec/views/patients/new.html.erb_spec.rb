require 'rails_helper'

RSpec.describe "patients/new", type: :view do
  before(:each) do
    assign(:patient, Patient.new(
      :fname => "MyString",
      :lname => "MyString",
      :gender => "MyString",
      :nextofkin => "MyString",
      :nextofkinphone => "MyString"
    ))
  end

  it "renders new patient form" do
    render

    assert_select "form[action=?][method=?]", patients_path, "post" do

      assert_select "input#patient_fname[name=?]", "patient[fname]"

      assert_select "input#patient_lname[name=?]", "patient[lname]"

      assert_select "input#patient_gender[name=?]", "patient[gender]"

      assert_select "input#patient_nextofkin[name=?]", "patient[nextofkin]"

      assert_select "input#patient_nextofkinphone[name=?]", "patient[nextofkinphone]"
    end
  end
end
