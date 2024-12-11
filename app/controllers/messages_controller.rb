class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_appointment, only: %i[index create]

  def index
    @appointments_as_doctor = Appointment.where(doctor: current_user)
    @appointments_as_patient = Appointment.where(user: current_user)
    @room_link = @appointment.room_link
    @message = Message.new
    @message_target = (current_user == @appointment.doctor.user ? @appointment.user.first_name.capitalize : "Dr. #{@appointment.doctor.full_name}" )
    @messages = @appointment.messages.order(created_at: :asc)
  end

  def create
    @message = Message.new(message_params)
    @message.appointment = @appointment
    @message.user = current_user
    if @message.save
      respond_to do |format|
        format.turbo_stream do
          render turbo_stream: turbo_stream.append(:messages, partial: "messages/message", target: "messages", locals: { message: @message, user: current_user })
        end
        format.html { redirect_to appointment_messages_path(@appointment) }
      end
    else
      render "messages/index", status: :unprocessable_entity
    end
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:appointment_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
