Rails.application.routes.draw do
  get 'feed/recently_viewed'
  get 'feed/liked'
  get 'feed/feed'
  devise_for :users
  resources :posts

  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
