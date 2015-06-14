require 'rails_helper'

RSpec.describe "summaries/edit", type: :view do
  before(:each) do
    @summary = assign(:summary, Summary.create!(
      :notes => "MyText",
      :patient => nil
    ))
  end

  it "renders the edit summary form" do
    render

    assert_select "form[action=?][method=?]", summary_path(@summary), "post" do

      assert_select "textarea#summary_notes[name=?]", "summary[notes]"

      assert_select "input#summary_patient_id[name=?]", "summary[patient_id]"
    end
  end
end
