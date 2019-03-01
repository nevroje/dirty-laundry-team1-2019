class BookingController < ApplicationController
  def index
    open_weather_api = Rails.configuration.open_weather_api
    weather = open_weather_api.forecast :daily, city: "Stockholm", country_code: "SE"
    @forecasts = []
    
    weather['list'].each do |forecast|
      if forecast["dt_txt"].split(' ').last == "15:00:00"
        @forecasts << forecast
      end
    end
    # binding.pry
  end
end
