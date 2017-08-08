Rails.application.routes.draw do
  resources :tweets
  devise_for :users

  root 'epicenter#feed'

  get "show_user/:id", controller: "epicenter", action: 'show_user', as: :show_user
  get "now_following/:id", controller: "epicenter", action: 'now_following', as: :now_following

  get "unfollow/:id", controller: 'epicenter', action: 'unfollow', as: :unfollow


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
