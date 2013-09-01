class Api::FriendsController < ApplicationController
  include ApiCommon

  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!

  def create
    if params[:user].blank? || params[:user][:id].blank?
      render json: result_failed
      return
    end

    friend = User.where(id: params[:user][:id]).first
    if friend.blank?
      render json: result_not_exists
      return
    end

    if FriendRequest.exists?(user_id: current_user.id, friend_user_id: friend.id)
      render json: result_already_exists
      return
    end

    if UserUser.exists?(user_id: current_user.id, friend_user_id: friend.id)
      render json: result_already_exists
      return
    end

    friend_request = FriendRequest.new(user_id: current_user.id, friend_user_id: friend.id)
    if friend_request.save
      render json: { result: 0 }
    else
      render json: result_failed
    end
  end
end
