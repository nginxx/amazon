require 'rails_helper'

describe Rating do
  subject { FactoryGirl.create(:rating) }

  context '#validation' do
    it { should allow_value(1).for(:rating_scale) }
    it { should_not allow_value(12).for(:rating_scale) }
  end

  context '#associations' do
    it { should belong_to(:customer) }
    it { should belong_to(:book) }
  end
end
