require 'rails_helper'

RSpec.describe "summaries/show", type: :view do
  before(:each) do
    @summary = assign(:summary, Summary.create!(
      :notes => "MyText",
      :patient => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
