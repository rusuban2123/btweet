class TweetsController < ApplicationController
  before_action :move_to_index,{only: [:edit,:update,:destroy]}
  
  def index
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
     redirect_to user_session_path
    else
     render 'new'
    end
  end

  def tweet_params
    params.require(:tweet).permit(:prefectre_id, :city, :court, :datetime, :level_id, :detail, :recruitment, :title, :image).merge(user_id: current_user.id)
  end

end
