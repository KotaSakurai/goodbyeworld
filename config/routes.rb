Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'images#index'
  resources :images
  resources :judges,only:[:index ,:create]
end
