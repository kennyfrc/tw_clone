class TweetsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.new(params[:tweet])
    @tweet.user = current_user
      if @tweet.save
        redirect_to tweets_path
      else
        render 'new'
      end
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

end
