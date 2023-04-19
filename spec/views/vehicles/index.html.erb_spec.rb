require 'rails_helper'

RSpec.describe "vehicles/index", type: :view do
  before(:each) do
    assign(:vehicles, [
      Vehicle.create!(
        name: "Splendor",
        type: "TwoWheeler"
      ),
      Vehicle.create!(
        name: "Indica",
        type: "FourWheeler"
      )
    ])
  end

  it "renders a list of vehicles" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Wheeler".to_s), count: 2
  end
end
