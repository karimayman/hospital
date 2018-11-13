class PatientController < ApplicationController
  def show
    @user = current_user
  end
  def index
    @patients =  Relation.where(:doctor_id =>Doctor.where(:user_id => current_user))
  end
def doctor_view
  @patient=  User.find(params[:id])
end
end
