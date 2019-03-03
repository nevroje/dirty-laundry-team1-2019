class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_action :get_laundry

  private
  def get_laundry
    @laundry = Laundry.first
  end
end
