class Api::UsersController < ApplicationController

    skip_before_action :verify_authenticity_token
    before_action :authenticate_user!

    def search

       if params[:user].blank? || params[:user][:email].blank?
           render json: result_failed
           return
        end
       
        @users = User.where(email: params[:user][:email]).first

        if @users.blank?
            render json: {result: 1}
        else
            render json: { result: 0, users: [id: @users.id, email: @users.email, name: @users.name] }
        end
    end
end
