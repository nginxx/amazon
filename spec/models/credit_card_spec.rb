require 'rails_helper'

describe 'CreditCard' do
  subject { FactoryGirl.create(:credit_card) }

  context '#validation' do
    fields = [:number, :cvv, :expiration_month, :expiration_year,
              :first_name, :last_name]
    fields.each { |f| it { should validate_presence_of(f) } }
  end

  context '#associations' do
    it { should have_many(:orders) }
    it { should belong_to(:customer) }
  end
end
