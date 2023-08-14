class CommentsController < ApplicationController
  include Resources

  private

  def to_merge
    subject_type = params[:comment_id] ? 'Comment' : 'Post'
    subject_id = params[:comment_id] ? params[:comment_id] : params[:post_id]
    { subject_id: subject_id, subject_type: subject_type, user_id: current_user.id }
  end

  def collection
    @collection = Comment.where(post_id: params[:post_id], subject_type: "Post")
    @collection = @collection.order(created_at: :desc)
  end

  def permitted_attributes = [:body, :post_id]
end
