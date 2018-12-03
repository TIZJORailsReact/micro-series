class SeasonsController < ApplicationController
  def_param_group :season do
    property :id, Integer, desc: "Season id"
    property :name, String, :desc => "Season title"
    property :number, Integer, :desc => "Season number"
  end

  api :GET, "series/:series_id/seasons/", "Get all seasons"
  param :series_id, Integer, desc: "Series id", required: true
  returns :array_of => :season, :code => 200, :desc => "All seasons"
  def index
    @seasons = Series.find(params[:series_id]).seasons
  end

  api :GET, "seasons/:id", "Get specific season"
  param :id, Integer, desc: "Season id", required: true
  returns :season, :code => 200, :desc => "Specific season"
  def show
    @season = Season.find(params[:id])
    render @season
  end
end
