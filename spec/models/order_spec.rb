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

  context '#instance methods' do
    it 'should add book to order' do
      book = FactoryGirl.create(:book)
      expect { subject.add_book_to_order(book.id, 1) }.to change { subject.order_items.size }.by(1)
    end

    it 'should count total order price' do
      FactoryGirl.create_list(:order_item, 2, order: subject)
      subject.set_total_price
      expect(subject.total_price).to eq(39.96)
    end

    it 'should raise argument error' do
      expect { subject.add_book_to_order('asd', 'asd') }.to raise_error(ArgumentError)
    end
  end
end
