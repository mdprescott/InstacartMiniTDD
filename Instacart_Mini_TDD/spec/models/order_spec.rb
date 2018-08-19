require 'rails_helper'

RSpec.describe Order, type: :model do
  describe "#validations" do
    let(:customer) { create :customer }
    let(:driver) { create :driver }
    let(:order) { create :order, customer: customer, driver: driver }

    subject { order }

    context "when the order has the necessary attributes" do
      it { is_expected.to be_valid }
    end

    context "when the order is missing customer" do
      before { order.update(customer: nil) }
      it { is_expected.not_to be_valid }
    end

    context "when the order is missing driver" do
      before { order.update(driver: nil) }
      it { is_expected.not_to be_valid }
    end
  end
end
