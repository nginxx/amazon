require 'rails_helper'

describe 'Category' do
  subject { FactoryGirl.create(:category) }

  context '#validation' do
    it { should validate_presence_of(:title) }
    it { should validate_uniqueness_of(:title).ignoring_case_sensitivity }
  end

  context '#associations' do
    it { should have_many(:books) }
  end
end
