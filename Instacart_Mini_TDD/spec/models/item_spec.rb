require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "#validations" do
    let(:warehouse) { create :warehouse }
    let(:item) { create :item, warehouse: warehouse }

    subject { item }

    context "when the item has all necessary attributes" do
      it { is_expected.to be_valid }
    end

    context "when the item is missing description" do
      before { item.update(description: nil) }
      it { is_expected.not_to be_valid }
    end

    context "when the item is missing price" do
      before { item.update(price: nil) }
      it { is_expected.not_to be_valid }
    end

    context "when the item is missing loosewieght identifier" do
      before { item.update(looseweight: nil) }
      it { is_expected.not_to be_valid }
    end

    context "when the item is missing warehouse" do
      before { item.update(warehouse: nil) }
      it { is_expected.not_to be_valid }
    end
  end
end
