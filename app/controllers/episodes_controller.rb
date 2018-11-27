class EpisodesController < ApplicationController

  def index
    @episodes = Season.find(params[:season_id]).episodes
  end

  def show
    @episode = Episode.find(params[:id])
    render @episode
  end
end
