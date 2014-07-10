class Appointment < ActiveRecord::Base
  belongs_to :pet
  belongs_to :customer

  # Validations
  validates_presence_of :date_of_visit, :pet, :customer, :reason_for_visit
end