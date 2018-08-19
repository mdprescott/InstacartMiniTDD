require 'rails_helper'

RSpec.describe Driver, type: :model do
  describe "#validations" do
    let(:driver) { create :driver }

    subject { driver }

    context "when the driver has the necessary attributes" do
      it { is_expected.to be_valid }
    end

    context "when the driver is missing name" do
      before { driver.update(name: nil) }
      it { is_expected.not_to be_valid }
    end

    context "when the driver is missing address" do
      before { driver.update(address: nil) }
      it { is_expected.not_to be_valid }
    end

    context "when the driver is missing phone number" do
      before { driver.update(phone_number: nil) }
      it { is_expected.not_to be_valid }
    end
  end
end
