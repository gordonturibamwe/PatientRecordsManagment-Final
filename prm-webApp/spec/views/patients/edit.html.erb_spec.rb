require 'rails_helper'

RSpec.describe "patients/edit", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :fname => "MyString",
      :lname => "MyString",
      :gender => "MyString",
      :nextofkin => "MyString",
      :nextofkinphone => "MyString"
    ))
  end

  it "renders the edit patient form" do
    render

    assert_select "form[action=?][method=?]", patient_path(@patient), "post" do

      assert_select "input#patient_fname[name=?]", "patient[fname]"

      assert_select "input#patient_lname[name=?]", "patient[lname]"

      assert_select "input#patient_gender[name=?]", "patient[gender]"

      assert_select "input#patient_nextofkin[name=?]", "patient[nextofkin]"

      assert_select "input#patient_nextofkinphone[name=?]", "patient[nextofkinphone]"
    end
  end
end
