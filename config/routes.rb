Rails.application.routes.draw do
  # possibly unneccesary
  resources :stances
  resources :issues, only: :index, :new, :show, :create
  resources :politicians, only: :index, :new, :show, :edit, :update, :create
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
