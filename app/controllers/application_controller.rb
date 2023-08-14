class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  
  respond_to :json
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index = render_json(@collection)

  def show = render_json(@resource)

  def create = render_json(model.create(params.permit(permitted_attributes)))

  def destroy = render_json(@resource.destroy!)

  def update
    @resource.update!(params.permit(permitted_attributes))
    render_json(@resource)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  private

  def check_abilities = authorize!(action_name, @resource)

  def collection = @collection = model.all

  def resource = @resource = model.find(params[:id])
  
  def model = self.class.to_s[0..-11].singularize.constantize

  def serializer = (model.to_s + "Blueprint").constantize

  def render_json(result) = render(json: serializer.render(result))
end
