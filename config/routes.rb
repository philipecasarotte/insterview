Rails.application.routes.draw do
  resources :comments  
  resources :photos do
    resources :comments
  end
  
  get "/", to: "photos#new"
end
