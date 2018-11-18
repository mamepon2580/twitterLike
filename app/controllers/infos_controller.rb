class InfosController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_user!
  def index
    @relation_new = Relation.new
    @not_follow_users =User
    .where.not(id:current_user.id)
    .where.not(id:Relation
      .select("follower_id")
      .where(follow_id: current_user.id))
  end
end
