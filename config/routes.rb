Rails.application.routes.draw do
  root 'rooms#index'

  resources :rooms do
    resources :topics
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
