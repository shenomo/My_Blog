class GuestController < ApplicationController
  def show
    @user = User.find(params[:user_id])
  end
end
