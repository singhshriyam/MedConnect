class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
    @doctors = @doctors.where(city: params[:city].downcase) if params[:city].present?
    @doctors = @doctors.where(specialization: params[:specialization].downcase) if params[:specialization].present?
    @doctors = @doctors.joins(:languages).where(languages: { name: params[:languages].downcase }).distinct if params[:languages].present?
  end

  def show
    @doctor = Doctor.find_by(id: params[:id])
    redirect_to doctors_path, alert: "Doctor not found." if @doctor.nil?
    @description_list = @doctor.description.split(/(?<=\.)|\n/).map(&:strip).reject(&:empty?)
    @availability_list = @doctor.formatted_availability
  end

  def new
    if current_user.doctor.present?
      redirect_to profile_path, notice: 'You have already registered as a doctor'
    else
      @doctor = Doctor.new(
        first_name: current_user.first_name,
        last_name: current_user.last_name
      )
    end
  end

  def create
    @doctor = Doctor.new(doctor_params)
    @doctor.user = current_user
    @doctor.photo.attach(current_user.photo.blob) if current_user.photo.attached?

    if @doctor.save
      redirect_to @doctor, notice: "Doctor was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def doctor_params
    params.require(:doctor).permit(
      :first_name, :last_name, :experience, :specialization, :city,
      :description, :education, :availability, :price_per_hour, :photo,
      :languages_ids => []
    )
  end
end
