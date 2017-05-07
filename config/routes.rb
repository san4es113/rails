Rails.application.routes.draw do
  resources :photos
  resources :infos
  devise_for :users

  #sidekiq 
  require 'sidekiq/web'
  mount Sidekiq::Web =>'/sidekiq'

  root 'infos#index'
  get 'home' => 'homes#index'

      get 'news' => 'news#lets_take_a_party'
      get 'photos' => 'photos#index'
  
end
