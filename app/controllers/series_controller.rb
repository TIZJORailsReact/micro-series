class SeriesController < ApplicationController
  before_action :my_like, only: :show
  before_action :set_recommended, only: :index

  has_scope :drama_scope, type: :boolean
  has_scope :comedy_scope, type: :boolean
  has_scope :action_scope, type: :boolean
  has_scope :horror_scope, type: :boolean
  has_scope :thriller_scope, type: :boolean
  has_scope :animation_scope, type: :boolean

  def_param_group :series do
    property :id, Integer, desc: "Series id"
    property :name, String, :desc => "Series title"
  end

  api :GET, "series/", "Get all series and 5 random recommendations"
  formats ['json']
  returns array_of: :series, :code => 200, :desc => "All series"

  api :GET, "series?login=login", "Get all series and 5 recommendations
depended on user likes"
  formats ['json']
  returns array_of: :series, :code => 200, :desc => "All series"
  def index
    @series = Series.all
  end

  api :GET, "favorites/series?login=login", "Get series liked by user"
  returns :array_of => :series, :code => 200, :desc => "Series liked by user"
  def favorites
    @series = Series.liked(params[:login])
  end

  api :GET, "series/:id", "Get specific series"
  formats ['json']
  param :id, String, desc: "Series id", required: true
  returns :series, :code => 200, :desc => "Specific series"
  def show
    @series = Series.find(params[:id])
    render @series
  end

  def my_like
    @series.likes.find_by(user: params[:login]).present?
  end

  def set_recommended
    @recommended = Series.recommended(params[:login])
  end
end
