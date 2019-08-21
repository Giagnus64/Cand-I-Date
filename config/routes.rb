Rails.application.routes.draw do
 
  resources :follows
  resources :users
  # possibly unneccesary
  # resources :stances
  #resources :issues, only: [:index, :new, :show, :create]
  resources :politicians, only: [:index, :new, :show, :edit, :update, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/login", to:"login#new", as: "home"
  post "/login", to:"login#create"
  post "/logout", to:"login#destroy"
  # login_path
  #start_swiping_path
  root "login#new"
end
