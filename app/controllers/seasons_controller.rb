class SeasonsController < ApplicationController

  def index
    @seasons = Series.find(params[:series_id]).seasons
  end

  def show
    @season = Season.find(params[:id])
    render @season
  end
end
