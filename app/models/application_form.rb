class ApplicationForm < ApplicationRecord

  def self.to_csv
    attributes = %w{ mobile_number application_number hall_ticket_number rank name gender date_of_birth age aadhaar_number blood_group mother_name father_name mobile_number1 mobile_number2 email social_status religion nationality physically_challenged address state pincode place_of_study_vi_to_xii physically_challenged_category sports_category defence_category ncc_category farmers_quota created_at updated_at }

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |user|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end
  end

end
