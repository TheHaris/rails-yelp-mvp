Rails.application.routes.draw do
  namespace :admin do
    resources :restaurants, only: :index
  end

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
