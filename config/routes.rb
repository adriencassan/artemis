Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :stocks, only: [:index] do
     resources :stock_ratings, only: [:create]
  end
end
