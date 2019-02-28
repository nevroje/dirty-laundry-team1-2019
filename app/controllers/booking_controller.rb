class BookingController < ApplicationController
  def index
    open_weather_api = Rails.configuration.open_weather_api
    weather = open_weather_api.forecast :daily, city: "Stockholm", country_code: "se"
    binding.pry
  end
end
