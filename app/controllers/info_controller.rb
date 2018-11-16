class InfoController < ApplicationController
  def index
    @users = User.all
  end
end
