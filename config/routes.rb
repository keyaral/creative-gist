Rails.application.routes.draw do
  root to: "larps#index"

devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :larps
resources :characters
resources :larp_registrations
end
