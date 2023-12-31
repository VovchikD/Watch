Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks'}
  resources :product, only: [:show]
  resources :category, only: [:show]
  resource  :cart, only: %i[destroy show] do 
    resources :items, only: %i[destroy create] 
  end
  resources :search, only: [:index]
  get "/cart/items" =>  "items#create"

  root to: 'main#index'
end
