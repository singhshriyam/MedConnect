class AppointmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @appointments_as_user = current_user.appointments
    @appointments_as_doctor = current_user.doctor.appointments unless current_user.doctor.nil?
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
      redirect_to appointments_path, notice: 'Appointment created successfully!'
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
    @doctor = @appointment.doctor
    # Create or retrieve the video room link for this appointment
    @room_link = @appointment.room_link || create_room_for_appointment(@appointment)
    @message_target = (current_user == @appointment.doctor.user ? @appointment.user.first_name.capitalize : "Dr. #{@appointment.doctor.full_name}" )
  end

  private

  def appointment_params
    params.require(:appointment).permit(:starts_at, :ends_at, :message, :symptoms, :medical_history)
  end

  def create_room_for_appointment(appointment)
    api_key = ENV['VIDEO_DAILY']
    response = Faraday.post "https://api.daily.co/v1/rooms/" do |req|
      req.body = {
        properties: {
          enable_chat: true,
          enable_people_ui: false,
          enable_pip_ui: true
        }
      }.to_json
      req.headers['Content-Type'] = 'application/json'
      req.headers['Authorization'] = "Bearer #{api_key}"
    end

    if response.status == 200
      room_url = JSON.parse(response.body)["url"]
      appointment.update(room_link: room_url)
      room_url
    else
      nil
    end
  end
end
