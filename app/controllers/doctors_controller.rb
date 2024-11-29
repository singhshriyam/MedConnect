class DoctorsController < ApplicationController
  def index
    if params[:query].present?
      sql_subquery = <<~SQL
        doctor.specialization @@ :query
        OR doctor.availability @@ :query
        OR doctor.location @@ :query
        OR doctor.languages @@ :query
      SQL
      @doctors = @doctors.joins(:language_ability).where(sql_subquery, query: "%#{params[:query]}%")
    else
      @doctors = Doctor.all
    end
  end

  def show
    @doctor = Doctor.find_by(id: params[:id])
    if @doctor.nil?
      redirect_to doctors_path, alert: "Doctor not found."
    end
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
    if current_user.photo.attached?
      @doctor.photo.attach(current_user.photo.blob)
    end

    if @doctor.save
      redirect_to @doctor, notice: "Doctor was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def doctor_params
    params.require(:doctor).permit(:first_name, :last_name, :experience, :specialization, :city, :description, :education, :availability, :price_per_hour, :photo, :languages_ids => [])
  end
end
