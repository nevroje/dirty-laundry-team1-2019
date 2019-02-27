class ForecastsController < ApplicationController
  before_action :set_forecast, only: [:show, :edit, :update, :destroy]
  @daily_weather = @weather.daily.data.first(5)
  
  def show       
    @weather = @forecast.get_weather       
    @current_weather = @weather.currently  
  end
  def index
    @forecasts = Forecast.all
  end

  def show
  end

  def new
    @forecast = Forecast.new
  end


  def edit
  end

  def create
    @forecast = Forecast.new(forecast_params)

    respond_to do |format|
      if @forecast.save
        format.html { redirect_to @forecast, notice: 'Forecast was successfully created.' }
        format.json { render :show, status: :created, location: @forecast }
      else
        format.html { render :new }
        format.json { render json: @forecast.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @forecast.update(forecast_params)
        format.html { redirect_to @forecast, notice: 'Forecast was successfully updated.' }
        format.json { render :show, status: :ok, location: @forecast }
      else
        format.html { render :edit }
        format.json { render json: @forecast.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @forecast.destroy
    respond_to do |format|
      format.html { redirect_to forecasts_url, notice: 'Forecast was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_forecast
      @forecast = Forecast.find(params[:id])
    end

    def forecast_params
      params.require(:forecast).permit(:lat, :lng)
    end
end
