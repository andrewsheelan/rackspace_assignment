json.array!(@veterinary_doctors) do |veterinary_doctor|
  json.extract! veterinary_doctor, :id, :name, :address_line1, :address_line2, :city, :state, :zip, :school_name, :years_in_practice
  json.url veterinary_doctor_url(veterinary_doctor, format: :json)
end
