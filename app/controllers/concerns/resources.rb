module Resources
  extend ActiveSupport::Concern

  included do
    before_action :collection, only: [:index]
    before_action :resource, only: [:update, :show, :destroy]
    before_action :check_abilities, only: [:update, :destroy]
  end
end