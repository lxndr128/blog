Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }

  resources :posts do
    resources :comments do
      resources :comments, :only => [:create]
    end
  end
  resources :subscriptions, :except => [:update]
end
