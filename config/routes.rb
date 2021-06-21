Rails.application.routes.draw do

  root 'rooms#index'

  resources :rooms do
    post :reaction
    resources :topics do
      resources :messages do
        post :like
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
