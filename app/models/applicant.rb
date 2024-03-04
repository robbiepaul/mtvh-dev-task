class Applicant < ApplicationRecord
  belongs_to :property

  validates :first_name, :last_name, :email, :phone, presence: true
  validate :phone_number_valid?

  def phone_number_valid?
    return if phone.blank?

    errors.add(:phone, 'must be a valid phone number') unless phone.match?(/\A(\+44|0)\d{10}\z/)
  end
end
