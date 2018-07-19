Rails.application.routes.draw do
  # get 'cards/:id'

  # get 'cards/pdf/'
  resources 'cards'
  authenticated :user do
    root 'cards#index', as: :authenticated_root
  end
  root 'home#index'
  devise_for :users
  
end
