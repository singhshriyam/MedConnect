class MessagesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @appointments_as_doctor = Appointment.where(doctor: current_user)
    @appointments_as_patient = Appointment.where(user: current_user)
    @appointment = Appointment.find(params[:appointment_id])
    @message = Message.new
    @messages = @appointment.messages.order(created_at: :asc)
  end

  def create
    @appointment = Appointment.find(params[:appointment_id])
    @message = Message.new(message_params)
    @message.appointment = @appointment
    @message.user = current_user
    if @message.save
      redirect_to appointment_messages_path(@appointment)
    else
      render "appointments/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
