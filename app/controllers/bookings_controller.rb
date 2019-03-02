class BookingsController < ApplicationController
  before_action :authenticate_user!, only: :create
  def index
    @laundries = Laundry.all
  end

  def create
    start_date_time = DateTime.parse(params[:slot])
    if current_user.book! @laundry, time: start_date_time, amount: 1
      redirect_to root_path, notice: "Booking was successfully created."
    else
      redirect_to root_path, error: "This time-slot has been booked!"
    end
  end
end
