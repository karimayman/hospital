class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
 validates :start_time, uniqueness: { scope: :doctor_id, message: "You have already made this time available" }
end
