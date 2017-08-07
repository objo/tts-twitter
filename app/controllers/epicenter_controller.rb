class EpicenterController < ApplicationController

  def feed
    @tweets = current_user.tweets
  end
  
end
