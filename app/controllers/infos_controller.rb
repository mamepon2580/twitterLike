class InfosController < ApplicationController
  before_action :authenticate_user!  #追加
  def index
    @relation = Relation.new
    @not_follow_users = User.where(id:
      Relation.where.not(follow_id: current_user.id)
    )
  end
end
