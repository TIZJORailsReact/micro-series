class SeriesController < ApplicationController
  def_param_group :series do
    property :id, Integer, desc: "Series id"
    property :name, String, :desc => "Series title"
  end

  api :GET, "series/", "Get all series"
  formats ['json']
  returns array_of: :series, :code => 200, :desc => "All series"
  def index
    @series = Series.all
  end

  api :GET, "series/:id", "Get specific series"
  formats ['json']
  param :id, String, desc: "Series id", required: true
  returns :series, :code => 200, :desc => "Specific series"
  def show
    @series = Series.find(params[:id])
    render @series
  end
end
