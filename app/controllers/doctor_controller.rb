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
  def index
    @doctors_available = User.where(account_type: 'doctor')

  end
  def patient_view
    @doctor=  User.find(params[:id])
  end

end
