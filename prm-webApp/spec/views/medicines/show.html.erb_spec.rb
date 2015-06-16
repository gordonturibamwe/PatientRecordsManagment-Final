require 'rails_helper'

RSpec.describe "medicines/show", type: :view do
  before(:each) do
    @medicine = assign(:medicine, Medicine.create!(
      :name => "Name",
      :prescription => "Prescription",
      :gram => "Gram",
      :refill => "Refill",
      :info => "MyText",
      :patient => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Prescription/)
    expect(rendered).to match(/Gram/)
    expect(rendered).to match(/Refill/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
