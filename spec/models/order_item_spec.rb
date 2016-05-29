require 'rails_helper'

describe 'OrderItem' do
  subject { FactoryGirl.build(:order_item) }

  context '#validation' do
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:quantity) }
  end

  context '#associations' do
    it { should belong_to(:order) }
    it { should belong_to(:book) }
  end
end
