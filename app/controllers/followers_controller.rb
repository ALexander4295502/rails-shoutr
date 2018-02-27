class FollowersController < ApplicationController
  def index
    @user = find_user
    @followers = @user.followers
  end

  def find_user
    @_user ||= User.find_by(username: params[:user_id])
  end
end