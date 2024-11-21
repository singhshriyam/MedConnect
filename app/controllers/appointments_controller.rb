class AppointmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @appointments = Appointment.all
  end

  def new
    @doctor = Doctor.find(params[:doctor_id])
    @appointment = Appointment.new
  end

  def create
    @doctor = Doctor.find(params[:doctor_id])
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user
    @appointment.doctor = @doctor

    if @appointment.save
      redirect_to doctor_path(@doctor), notice: 'Appointment created successfully!'
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
    @doctor = @appointment.doctor
  end

  private

  def appointment_params
    params.require(:appointment).permit(:starts_at, :ends_at, :message, :symptoms, :medical_history)
  end
end
