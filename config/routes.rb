Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :comments  
  resources :photos
  resources :users
  
  resources :photos do
    resources :users
    resources :comments do
      resources :users
    end
  end
  
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
    
  get "/", to: "photos#new"
  root to: "photos#new"  
end
