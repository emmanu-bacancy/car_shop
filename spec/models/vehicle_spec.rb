require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  let(:vehicle) {create(:vehicle)}
  it "is not valid without a name" do
    expect(build(:vehicle, name: nil)).not_to be_valid
  end

  it "is not valid without an already existing company name" do
    expect(build(:vehicle, name: vehicle.name)).not_to be_valid
  end

  it "is not valid with a name" do
    expect(build(:vehicle, name: "Honda")).to be_valid
  end
end
