class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_laundry

  private
  def get_laundry
    @laundry = Laundry.first
  end
end
