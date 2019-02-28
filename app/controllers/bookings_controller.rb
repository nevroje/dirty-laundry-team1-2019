class BookingsController < ApplicationController
  def index
    @laundries = Laundry.all 
  end
end
