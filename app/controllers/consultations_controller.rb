require 'faraday'
require 'faraday/net_http'
require 'date'
require 'pry-byebug'

class ConsultationsController < ApplicationController
  before_action :set_consultation, only: %i[ show ]

  def index
    @consultations = Consultation.all
  end

  def show
    @room_link = @consultation.room_link
  end

  def new
    @consultation = Consultation.new
  end

  def create
    @consultation = Consultation.new
    @consultation.room_link = create_room
    if @consultation.save
      redirect_to @consultation, notice: "Consultation was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_consultation
    @consultation = Consultation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def consultation_params
    params.require(:consultation).permit(:psy, :specialties, :room_url)
  end

  def create_room
    @api_key = ENV['VIDEO_DAILY']
    res = Faraday.post "https://api.daily.co/v1/rooms/" do |req|
      req.body = { properties: { enable_chat: true, enable_people_ui: false, enable_pip_ui: true }}.to_json
      req.headers['Content-Type'] = 'application/json'
      req.headers['Authorization'] = "Bearer #{@api_key}"
    end
    return JSON.parse(res.body)["url"] if res.status == 200
  end
end
