Rails.application.routes.draw do
  root to: 'posts#top'
  #会員ユーザー
  devise_for :users
  resources :users, only: [:show, :edit, :update]

  #投稿
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
