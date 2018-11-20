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

  resources :products do
    member do
      put "like", to: "products#upvote"
      put "dislike", to: "products#downvote"
    end
  end

  resources :orders

  get '/cart/:id', to: 'cart#show', as: 'cart'
  # resources :cart, only: [:show, :index, :create]
  root 'home#index'
end
