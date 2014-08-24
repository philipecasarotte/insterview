Rails.application.routes.draw do
  resources :comments  
  resources :photos do
    resources :comments
  end
  
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
  
  get "/", to: "photos#new"
end
