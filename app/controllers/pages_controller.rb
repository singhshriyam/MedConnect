class PagesController < ApplicationController
  def home
  end

  def profile
    @doctors = Doctor.all
  end

  def getintouch
  end

  def about
  end
end
