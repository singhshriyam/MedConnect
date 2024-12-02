class MessagesController < ApplicationController
  def index
    @appointments_as_doctor = Appointment.where(doctor: current_user)
    @appointment = Appointment.find(params[:appointment_id])
    @message = Message.new
    @messages = Message.all
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
