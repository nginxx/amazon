require 'rails_helper'

describe 'Order' do
  subject { FactoryGirl.create(:order) }

  context '#validation' do
    [:total_price, :completed_date, :state].each { |f| it { should validate_presence_of(f) } }
    it { should allow_value('in progress').for(:state) }
    it { should_not allow_value('invalid').for(:state) }
  end

  context '#associations' do
    it { should have_many(:order_items) }
    fields = [:customer, :credit_card, :billing_address, :shipping_address]
    fields.each { |f| it { should belong_to(f) } }
  end
end
