require 'rails_helper'

RSpec.describe Item, type: :model do

  it "item attributes must not be empty" do
    item = Item.new
    expect(item.invalid?).to be true
    expect(item.errors[:name].any?).to be true
    expect(item.errors[:price].any?).to be true
  end

  context "item price" do
    it "must not be negative" do
      item = Item.new(name: 'Name', price: -1)
      expect(item.invalid?).to be true
      expect(item.errors[:price]).to eq ["must be greater than or equal to 0.01"]
    end
    it "must not be 0" do
      item = Item.new(name: 'Name', price: 0)
      expect(item.invalid?).to be true
      expect(item.errors[:price]).to eq ["must be greater than or equal to 0.01"]
    end
    it "is accepted if positive" do
      item = Item.new(name: 'Name', price: 1)
      expect(item.valid?).to be true
    end

  end
end
