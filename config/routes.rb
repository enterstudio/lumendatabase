Chill::Application.routes.draw do
  devise_for :users

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :notices, only: [:show, :new, :create]

  resources :categories, only: [:show]

  root to: 'home#index'
end
