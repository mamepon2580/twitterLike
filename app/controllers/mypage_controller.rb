class MypageController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]
  def index
    @tweets_num = Tweet.where(user_id: current_user.id).length
    @follow_num = Relation.where(follow_id: current_user.id).length
    @follower_num = Relation.where(follower_id: current_user.id).length
  end
end
