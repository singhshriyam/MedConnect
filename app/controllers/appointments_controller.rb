class AppointmentsController < ApplicationController
  def new
    @doctor = Doctor.find(params[:doctor_id])
    #to be able to set the user we need to protect this page with devise, the user must be logged in
    @user = current_user
    @appointment = Appointment.new
    raise
  end

  def create
  end
end
