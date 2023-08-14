class PostsController < ApplicationController
  include Resources

  private

  def collection = @collection = params[:publisher_id] ? Post.where(user_id: params[:publisher_id]) : Post.all

  def permitted_attributes = [:title, :body]
end
