class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
    @doctors = @doctors.where(city: params[:city].downcase) if params[:city].present?
    @doctors = @doctors.where(specialization: params[:specialization].downcase) if params[:specialization].present?
    @doctors = @doctors.joins(:languages).where(languages: { name: params[:languages].downcase }).distinct if params[:languages].present?
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    @doctor.user = current_user
    if @doctor.save
      redirect_to @doctor, notice: "Doctor created successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :specialization, :email, :phone, :user_id, :photo)
  end
end
