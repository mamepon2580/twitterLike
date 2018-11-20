class FollowsController < ApplicationController
  def index
    @relations_follow = Relation
      .where(follow_id: current_user.id)
  end
  def destroy
    @relation.destroy
    respond_to do |format|
      format.html { redirect_to follows_url, notice: 'Relation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
