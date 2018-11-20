class FollowersController < ApplicationController
  def index
    @relations_follower = Relation
      .where(follower_id: current_user.id)
  end
  def destroy
    @relation.destroy
    respond_to do |format|
      format.html { redirect_to relations_url, notice: 'Relation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
