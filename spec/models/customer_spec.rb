require 'rails_helper'

describe 'Customer' do
  subject { FactoryGirl.create(:customer) }

  context '#validation' do
    fields = [:email, :password, :first_name, :last_name]
    fields.each { |f| it { should validate_presence_of(f) } }
    it { should validate_uniqueness_of(:email) }
  end

  context '#associations' do
    it { should have_many(:ratings) }
    it { should have_many(:orders) }
  end

  context 'instance methods' do
    it 'should create new order' do
      order = FactoryGirl.create(:order)
      expect { subject.create_order(order) }.to change { subject.orders.size }.by(1)
    end

    it 'should return current order \'in process\' state' do
      order = FactoryGirl.create(:order)
      order.state = 'shipped'
      subject.return_order_in_progress(order)
      expect(order.state).to eq('in progress')
    end
  end
end
