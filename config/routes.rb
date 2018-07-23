Rails.application.routes.draw do
  # get 'cards/pdf/'
  resources 'cards'
  resources 'stocks'
  authenticated :user do
    root 'cards#index', as: :authenticated_root
  end
  root 'home#index'
  devise_for :users
  
end
