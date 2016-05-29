require 'rails_helper'

describe 'Address' do
  subject { FactoryGirl.build(:address) }

  context '#validation' do
    fields = [:address, :zip_code, :city, :phone, :country]
    fields.instance_variables.each { |f| it { should validate_presence_of(f) } }
  end
end
