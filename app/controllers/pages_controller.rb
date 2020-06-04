class PagesController < ApplicationController
  http_basic_authenticate_with name: ENV['AUTHENTICATION_USERNAME'], password: ENV['AUTHENTICATION_PASSWORD'], only: :admin

  def pollinators
  end

  def nysparks
    @vol_bearmountain = Volunteer.where(park_id:2)
    @vol_montauk = Volunteer.where(park_id:6)
    @vol_niagara = Volunteer.where(park_id:4)
    @vol_hudson = Volunteer.where(park_id:5)
  end

  def about
  end

  def sources
  end

  def garden
  end

  def admin
    @volunteers = Volunteer.all
  end

  def contact
  end

end
