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
    @description_list = @doctor.description.split(/(?<=\.)|\n/).map(&:strip).reject(&:empty?)
    @availability_list = @doctor.formatted_availability
  end
end
