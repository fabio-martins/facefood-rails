Rails.application.routes.draw do
  root to: 'homepage#index'
  resources :comment, only: :create
  resources :post, only: :create
end
