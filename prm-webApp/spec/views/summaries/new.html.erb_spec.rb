require 'rails_helper'

RSpec.describe "summaries/new", type: :view do
  before(:each) do
    assign(:summary, Summary.new(
      :notes => "MyText",
      :patient => nil
    ))
  end

  it "renders new summary form" do
    render

    assert_select "form[action=?][method=?]", summaries_path, "post" do

      assert_select "textarea#summary_notes[name=?]", "summary[notes]"

      assert_select "input#summary_patient_id[name=?]", "summary[patient_id]"
    end
  end
end
