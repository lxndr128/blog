class PostsController < ApplicationController
  include Resources

  private

  def to_merge = { user_id: current_user.id } 

  def collection
    @collection = params[:subscriptions] ? Post.where(user: current_user.publishers) : Post.all
    @collection = @collection.order(created_at: :desc)
  end

  def my_subscriptions
    Post.where(user_id: current_user.publishers.pluck(:id))
  end

  def permitted_attributes = [:title, :body]
end
