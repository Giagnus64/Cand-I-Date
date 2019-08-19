Rails.application.routes.draw do
  resources :stances
  resources :issues
  resources :politicians
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
