class Applicant < ApplicationRecord
  belongs_to :property

  validates :first_name, :last_name, :email, :phone, presence: true
end
