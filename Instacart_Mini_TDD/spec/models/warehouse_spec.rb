require 'rails_helper'

RSpec.describe Warehouse, type: :model do
  describe "#validations" do
    let(:warehouse) { create :warehouse }

    subject { warehouse }

    context "when the warehouse has all necessary attributes" do
      it { is_expected.to be_valid }
    end

    context "when the warehouse is missing name" do
      before { warehouse.update(name: nil) }
      it { is_expected.not_to be_valid }
    end

    context "when the warehouse is missing address" do
      before { warehouse.update(address: nil) }
      it { is_expected.not_to be_valid }
    end
  end
end
