Rails.application.routes.draw do
  root 'home#index'
  devise_for :users

  authenticated :user do
    # root 'projects#index', as: :authenticated_root
  end
end
