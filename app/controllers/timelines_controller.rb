class TimelinesController < ApplicationController
  def index
    @tweets = Tweet
      .where(user_id: Relation
        .select("follower_id")
        .where(follow_id: current_user.id))
      .or(Tweet.where(user_id: current_user.id))
    @user_favos = Favo
      .where(user_id: current_user.id)
    @favo_new = Favo.new
  end
end
