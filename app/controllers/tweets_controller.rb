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
     redirect_to new_prototype_path
    end
  end

end
