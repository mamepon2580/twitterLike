class InfosController < ApplicationController
  before_action :authenticate_user!  #追加
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end
end
