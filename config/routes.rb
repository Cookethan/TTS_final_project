Rails.application.routes.draw do
  get 'feed/recently_viewed'
  get 'feed/liked'
  get 'feed/feed'
  get '/search' => 'feed#search', :as => 'search_page'
  devise_for :users
  resources :posts do
    resources :comments
  end

  resources :comments do
    resources :comments
  end
  root 'feed#feed'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
