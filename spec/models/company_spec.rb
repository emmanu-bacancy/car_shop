require 'rails_helper'

RSpec.describe Company, type: :model do
  let(:company) { create(:company) }
  it "is not valid without a name" do
    expect(build(:company, name: nil)).not_to be_valid
  end

  it "is not valid without an already existing company name" do
    expect(build(:company, name: company.name)).not_to be_valid
  end

  it "is not valid with a name" do
    expect(build(:company, name: "Honda")).to be_valid
  end

  it "should have many vehicles" do
    t = Company.reflect_on_association(:vehicles)
    expect(t.macro).to eq(:has_many)
  end

  it "should have many two wheelers" do
    t = Company.reflect_on_association(:two_wheelers)
    expect(t.macro).to eq(:has_many)
  end

  it "should have many two wheelers" do
    t = Company.reflect_on_association(:four_wheelers)
    expect(t.macro).to eq(:has_many)
  end

end

