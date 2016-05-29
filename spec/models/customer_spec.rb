require 'rails_helper'

describe 'Customer' do
  subject { FactoryGirl.build(:customer) }

  context '#validation' do
    fields = [:email, :password, :first_name, :last_name]
    fields.each { |f| it { should validate_presence_of(f) } }
    it { should validate_uniqueness_of(:email) }
  end

  context '#associations' do
    it { should have_many(:ratings) }
    it { should have_many(:orders) }
  end
end
