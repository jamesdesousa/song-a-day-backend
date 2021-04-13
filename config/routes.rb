Rails.application.routes.draw do
  resources :youtube_songs
  resources :comments
  resources :likes
  resources :posts
  resources :genres
  resources :songs
  resources :user_followings
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
