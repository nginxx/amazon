require 'rails_helper'

describe 'Author' do
  subject { FactoryGirl.create(:author) }

  context '#validation' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
  end

  context '#associations' do
    it { should have_many(:books) }
  end
end
