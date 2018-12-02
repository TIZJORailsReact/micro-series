class EpisodesController < ApplicationController

  def_param_group :episode do
    property :id, Integer, desc: "Episode id"
    property :name, String, :desc => "Episode title"
    property :episode_number, Integer, :desc => "Episode number"
    property :link, String, :desc => "Episode link"
  end

  api :GET, "seasons/:season_id/episodes/", "Get all episodes"
  param :season_id, Integer, desc: "Season id", required: true
  returns :array_of => :episode, :code => 200, :desc => "All episodes"
  def index
    @episodes = Season.find(params[:season_id]).episodes
  end

  api :GET, "episodes/:id", "Get specific episode"
  param :id, Integer, desc: "Episode id", required: true
  returns :episode, :code => 200, :desc => "Specific episode"
  def show
    @episode = Episode.find(params[:id])
    render @episode
  end
end
