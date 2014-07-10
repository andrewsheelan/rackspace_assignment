class Pet < ActiveRecord::Base
	has_many :appointments
	
	# Constants
	NAME_MAX_LENGTH 		= 35
	BREED_MAX_LENGTH 		= 35

	validates_presence_of :age, :weight, :date_of_last_visit
	validates :name, length: { maximum: NAME_MAX_LENGTH }, allow_blank: false
	validates :breed, length: { maximum: BREED_MAX_LENGTH }, allow_blank: false

	validates :type_of_pet, inclusion: {in: %w[dog cat bird]}
end