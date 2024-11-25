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
    params.require(:doctor).permit(:name, :specialization, :email, :phone, :user_id)
  end
end
