require 'rails_helper'

RSpec.describe "patients/new", type: :view do
  before(:each) do
    assign(:patient, Patient.new(
<<<<<<< HEAD
      :fname => "MyString",
      :lname => "MyString",
      :gender => "MyString",
      :nextofkin => "MyString",
      :nextofkinphone => "MyString"
=======
      :firstName => "MyString",
      :lastName => "MyString",
      :gender => "MyString",
      :proxyName => "MyString",
      :proxyTelephone => "MyString",
      :sickness => "MyString"
>>>>>>> 234c9b8af761cd64312d5ac2a3a601d1ccb93988
    ))
  end

  it "renders new patient form" do
    render

    assert_select "form[action=?][method=?]", patients_path, "post" do

<<<<<<< HEAD
      assert_select "input#patient_fname[name=?]", "patient[fname]"

      assert_select "input#patient_lname[name=?]", "patient[lname]"

      assert_select "input#patient_gender[name=?]", "patient[gender]"

      assert_select "input#patient_nextofkin[name=?]", "patient[nextofkin]"

      assert_select "input#patient_nextofkinphone[name=?]", "patient[nextofkinphone]"
=======
      assert_select "input#patient_firstName[name=?]", "patient[firstName]"

      assert_select "input#patient_lastName[name=?]", "patient[lastName]"

      assert_select "input#patient_gender[name=?]", "patient[gender]"

      assert_select "input#patient_proxyName[name=?]", "patient[proxyName]"

      assert_select "input#patient_proxyTelephone[name=?]", "patient[proxyTelephone]"

      assert_select "input#patient_sickness[name=?]", "patient[sickness]"
>>>>>>> 234c9b8af761cd64312d5ac2a3a601d1ccb93988
    end
  end
end
