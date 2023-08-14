class PostsController < ApplicationController
  include Resources

  private

  def to_merge = { user_id: current_user.id } 

  def collection
    @collection = params[:publisher_id] ? Post.where(user_id: params[:publisher_id]) : Post.all
    @collection = @collection.order(created_at: :desc)
  end

  def permitted_attributes = [:title, :body]
end
