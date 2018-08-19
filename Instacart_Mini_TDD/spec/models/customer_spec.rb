require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe "#validations" do
    let(:customer) { create :customer }

    subject { customer }

    context "when the customer has the necessary attributes" do
      it { is_expected.to be_valid }
    end

    context "when the customer is missing name" do
      before { customer.update(name: nil) }
      it { is_expected.not_to be_valid }
    end

    context "when the customer is missing address" do
      before { customer.update(address: nil) }
      it { is_expected.not_to be_valid }
    end

    context "when the customer is missing phone number" do
      before { customer.update(phone_number: nil) }
      it { is_expected.not_to be_valid }
    end
  end
end
