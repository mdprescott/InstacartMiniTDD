require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  describe "#validations" do
    let(:warehouse) { create :warehouse }
    let(:item) { create :item, warehouse: warehouse }
    let(:customer) { create :customer }
    let(:driver) { create :driver }
    let(:order) { create :order, customer: customer, driver: driver }
    let(:order_item) { create :order_item, item: item, order: order }

    subject { order_item }

    context "when the order_item has the necessary attributes" do
      it { is_expected.to be_valid }
    end

    context "when the order_item is missing associated item" do
      before { order_item.update(item: nil) }
      it { is_expected.not_to be_valid }
    end

    context "when the order_item is missing associated order" do
      before { order_item.update(order: nil) }
      it { is_expected.not_to be_valid }
    end

  end
end
