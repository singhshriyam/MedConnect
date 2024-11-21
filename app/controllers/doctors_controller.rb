class DoctorsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = Docotors.where("specialization @@ ?", "%#{params[query]}%")
      @doctors = sql_query
    else
      @doctors = Doctor.all
    end
  end
end
