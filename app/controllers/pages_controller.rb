class PagesController < ApplicationController
  http_basic_authenticate_with name: ENV['AUTHENTICATION_USERNAME'], password: ENV['AUTHENTICATION_PASSWORD'], only: :admin

  def pollinators
  end

  def nysparks
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
