class SubscriptionController < ApplicationController
  before_action :authenticate_user!

  def create # Creating a new subscription and redirect to choosing user page
    @user = User.find(params[:user_id])
    @subscription = current_user.subscriptions.create(blogger: @user.id)
    redirect_to user_page_path(@user)
  end

  def destroy # Destroying subscription and redirect to choosing user page
    sub = Subscription.find(params[:id])
    @user = User.find(sub.blogger)
    sub.destroy
    redirect_to user_page_path(@user)
  end

  def index # Showing feed with all current_user subscriprions
    @final_arr = []
    current_user.subscriptions.each do |s|
      Post.all.includes(:user).each do |post|
        @final_arr.push(post) if s.blogger == p.user.id
      end
    end
  end
end
