require 'rails_helper'

RSpec.describe "medicines/new", type: :view do
  before(:each) do
    assign(:medicine, Medicine.new(
      :name => "MyString",
      :prescription => "MyString",
      :gram => "MyString",
      :refill => "MyString",
      :info => "MyText",
      :patient => nil
    ))
  end

  it "renders new medicine form" do
    render

    assert_select "form[action=?][method=?]", medicines_path, "post" do

      assert_select "input#medicine_name[name=?]", "medicine[name]"

      assert_select "input#medicine_prescription[name=?]", "medicine[prescription]"

      assert_select "input#medicine_gram[name=?]", "medicine[gram]"

      assert_select "input#medicine_refill[name=?]", "medicine[refill]"

      assert_select "textarea#medicine_info[name=?]", "medicine[info]"

      assert_select "input#medicine_patient_id[name=?]", "medicine[patient_id]"
    end
  end
end
