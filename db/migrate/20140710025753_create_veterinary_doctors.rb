class CreateVeterinaryDoctors < ActiveRecord::Migration
  def change
    create_table :veterinary_doctors do |t|
      t.string :name
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :zip
      t.string :school_name
      t.integer :years_in_practice

      t.timestamps
    end
  end
end
