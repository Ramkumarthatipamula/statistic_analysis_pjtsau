class CreateApplicationForms < ActiveRecord::Migration[5.2]
  def change
    create_table :application_forms do |t|
      t.string :mobile_number
      t.string :application_number
      t.string :hall_ticket_number
      t.integer :rank
      t.string :name
      t.string :gender
      t.date :date_of_birth
      t.integer :age
      t.string :aadhaar_number
      t.string :blood_group
      t.string :mother_name
      t.string :father_name
      t.string :mobile_number1
      t.string :mobile_number2
      t.string :email
      t.string :social_status
      t.string :religion
      t.string :nationality
      t.boolean :physically_challenged
      t.string :address
      t.string :state
      t.string :pincode
      t.string :place_of_study_vi_to_xii
      t.string :physically_challenged_category
      t.string :sports_category
      t.string :defence_category
      t.string :ncc_category
      t.string :farmers_quota

      t.timestamps
    end
  end
end
