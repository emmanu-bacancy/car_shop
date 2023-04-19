require 'rails_helper'

RSpec.describe "vehicles/show", type: :view do
  before(:each) do
    assign(:vehicle, Vehicle.create!(
      name: "Splendor",
      type: "TwoWheeler"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Splendor/)
    expect(rendered).to match(/Wheeler/)
  end
end
