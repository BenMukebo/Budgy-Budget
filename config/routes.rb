Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root 'users#index'
  resources :users, only: [:index]
  end
end
