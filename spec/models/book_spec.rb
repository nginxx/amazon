require 'rails_helper'

describe 'Book' do
  subject { FactoryGirl.create(:book) }

  context '#validation' do
    [:in_stock, :price, :title].each { |f| it { should validate_presence_of(f) } }
  end

  context '#associations' do
    it { should have_many(:ratings) }
    it { should belong_to(:category) }
    it { should belong_to(:author) }
  end
end
