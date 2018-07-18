Rails.application.routes.draw do
  # get 'postcard/index'
  authenticated :user do
    root 'cards#index', as: :authenticated_root
  end
  root 'home#index'
  devise_for :users
  resources 'cards'

end
