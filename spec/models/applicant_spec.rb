require 'rails_helper'

RSpec.describe Applicant, type: :model do
  describe 'phone number validation' do
    let(:property) { Property.create(address: '123 Test St', property_ref: 'AAA123') }
    let(:valid_attributes) { { first_name: 'John', last_name: 'Doe', email: 'foo@bar.com', property_id: property.id }}

    it 'is valid with a valid phone number' do
      applicant = Applicant.new(valid_attributes.merge(phone: '01898119101'))
      expect(applicant).to be_valid
    end

    it 'is invalid with an invalid phone number' do
      applicant = Applicant.new(valid_attributes.merge(phone: '123'))
      expect(applicant).to_not be_valid
    end
  end
end
