class LikesController < ApplicationController
  def create
    @like = Series.find(params[:series_id]).likes.new(likes_params)

    if @like.save!
      head 200
    else
      head 422
    end
  end

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
