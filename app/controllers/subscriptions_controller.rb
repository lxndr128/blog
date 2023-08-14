class SubscriptionsController < ApplicationController
  include Resources

  def create = render_json(Subscription.create(params.permit(permitted_attributes).merge(subscriber_id: current_user.id)))

  private

  def collection
    return @collection = current_user.subscribers_relations if params[:my_subscribers]
    return @collection = Subscription.where(publisher_id: params[:publisher_id]) if params[:publisher_id]
    return @collection = Subscription.where(subscriber_id: params[:subscriber_id]) if params[:subscriber_id]
    @collection = current_user.publishers_relations
  end

  def permitted_attributes = [:publisher_id]
end
