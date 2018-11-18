class TimelinesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]
  def index
    @tweets = Tweet
      .where(user_id: Relation
        .select("follower_id")
        .where(follow_id: current_user.id))
      .or(Tweet.where(user_id: current_user.id))
    @user_favos = Favo
      .where(user_id: current_user.id)
      .select("tweet_id")
    @favo_new = Favo.new
    @favo_all = Favo.all
  end
  def destroy
    @favo.destroy
    respond_to do |format|
      format.html { redirect_to favos_url, notice: 'Favo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
