class DoctorReviewsController < ApplicationController
  def new
    @doctor = Doctor.find(params[:doctor_id])
    @doctor_review = DoctorReview.new
  end

  def create
    @doctor_review = DoctorReview.new(doctor_review_params)
    @doctor_review.user = current_user
    @doctor = Doctor.find(params[:doctor_id])
    @doctor_review.doctor = @doctor
    if @doctor_review.save
      redirect_to @doctor, notice: "Doctor's review was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def doctor_review_params
    params.require(:doctor_review).permit(
      :title, :comment, :rating, :doctor_id
    )
  end
end
