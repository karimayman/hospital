class DoctorController < ApplicationController
  def show
    @user=current_user
  end
  def schedule
    @appointments_made = Appointment.new
    doc=Doctor.where(user_id: current_user.id)
    @confirmed_appointments = Appointment.where(:doctor_id => doc).where(confirmed: 'true')
    @unconfirmed_appointments = Appointment.where(confirmed: 'false' )

  end

end
