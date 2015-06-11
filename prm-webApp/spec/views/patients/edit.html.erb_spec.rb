require 'rails_helper'

RSpec.describe "patients/edit", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :firstName => "MyString",
      :lastName => "MyString",
      :gender => "MyString",
      :proxyName => "MyString",
      :proxyTelephone => "MyString",
      :sickness => "MyString"
    ))
  end

  it "renders the edit patient form" do
    render

    assert_select "form[action=?][method=?]", patient_path(@patient), "post" do

      assert_select "input#patient_firstName[name=?]", "patient[firstName]"

      assert_select "input#patient_lastName[name=?]", "patient[lastName]"

      assert_select "input#patient_gender[name=?]", "patient[gender]"

      assert_select "input#patient_proxyName[name=?]", "patient[proxyName]"

      assert_select "input#patient_proxyTelephone[name=?]", "patient[proxyTelephone]"

      assert_select "input#patient_sickness[name=?]", "patient[sickness]"
    end
  end
end
