Rails.application.routes.draw do
  root to: "songs#index"
  devise_for :users
  resources :songs do
    resources :words
  end
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
