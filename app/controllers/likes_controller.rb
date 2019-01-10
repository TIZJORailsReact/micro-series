class LikesController < ApplicationController
  def_param_group :like do
    param :like, Hash, desc: "A like object", required: true do
      param :login, String, :desc => "User login"
    end
  end

  api :POST, 'series/:series_id/likes/', "Create like"
  param :series_id, Integer, required: true
  param_group :like
  returns :code => 200, :desc => "Successfully create like"
  returns :code => 422, :desc => 'Cannot save like'
  example " 'like': {
                    'login': 'TestLogin'
                    } "
  formats ['json']
  def create
    @like = Series.find(params[:series_id]).likes.new(likes_params)

    if @like.save!
      head 200
    else
      head 422
    end
  end

  api :DELETE, 'series/:series_id/like', "Delete like"
  param :series_id, Integer, required: true
  returns :code => 200, :desc => "Successfully deletes like"
  returns :code => 404, :desc => "Like not found"
  returns :code => 422, :desc => 'Cannot delete like'
  def destroy
    @like = Series.find(params[:series_id]).likes.find_by(user: params[:login])
    if @like.present?
      if @like.destroy
        head 200
      else
        head 422
      end
    else
      head 404
    end
  end

  def likes_params
    params.require(:like).permit(:login)
  end
end
