Rails.application.routes.draw do
  resources :photos
  
  get "/", to: "photos#new"
end
