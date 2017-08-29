Rails.application.routes.draw do
  resources :songs do
    resources :words
  end
  get 'words/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
