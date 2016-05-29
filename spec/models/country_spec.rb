require 'rails_helper'

describe 'Country' do
  subject { FactoryGirl.create(:country) }

  context '#validation' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).ignoring_case_sensitivity }
  end
end
