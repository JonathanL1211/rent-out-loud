Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :show, :edit, :update, :destroy]

  resources :products do
    resources :orders
  end
  resources :products do
    resources :sessions, only: [:index]
  end
  # resources :cart, only: [:show, :index, :create]
  root 'home#index'
end
