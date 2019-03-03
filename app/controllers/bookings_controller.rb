class BookingsController < ApplicationController
  before_action :authenticate_user!, only: :create
  def index
    @laundry = Laundry.first
  end

  def create
    if current_user.bookings.length < 1 || (current_user.subscriber? && current_user.bookings.length < 4)
      start_date_time = DateTime.parse(params[:slot])
      if current_user.book! @laundry, time: start_date_time, amount: 1
        redirect_to root_path, notice: "Booking was successfully created."
      end
    else
      redirect_to root_path, notice: "You reached your booking limit!"
    end 
  end
end
