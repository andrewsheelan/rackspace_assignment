class VeterinaryDoctor < ActiveRecord::Base
	# Constants
	NAME_MAX_LENGTH 		= 35
	ZIP_MIN_LENGTH			= 5
	YEARS_IN_PRACTICE_MIN 	= 1
	YEARS_IN_PRACTICE_MAX 	= 100

	# Validations
	validates :name, length: { maximum: NAME_MAX_LENGTH }, allow_blank: false
	validates :zip, length: { minimum: ZIP_MIN_LENGTH }, allow_blank: true
	validates :years_in_practice, numericality: { greater_than_or_equal_to: YEARS_IN_PRACTICE_MIN, less_than_or_equal_to: YEARS_IN_PRACTICE_MAX }, allow_blank: true
end