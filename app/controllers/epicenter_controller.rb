class EpicenterController < ApplicationController
  before_action :authenticate_user!

  def feed
    following = current_user.following
    following << current_user.id

    @tweets = Tweet.tweets_for(following)
  end

  def now_following
    current_user.following.push(params[:id].to_i)
    current_user.save

    redirect_to show_user_path(id: params[:id])
  end

  def unfollow
    current_user.following.delete(params[:id].to_i)
    current_user.save

    redirect_to show_user_path(id: params[:id])
  end

  def show_user
    @user = User.find(params[:id])
  end

  def show_tags
    @tag = Tag.find(params[:id])
  end

end
