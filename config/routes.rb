Rails.application.routes.draw do
devise_for :user
root to: 'homes#top'
get'about' => 'homes#index'
get'homes#top' => 'homes#index'
get'top' => 'homes#top#index'
get'Bookers' => 'homes#top#index'
get'Home' => 'homes#top#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 resources :books, only: [:new, :create, :index, :show, :destroy, :update, :edit]
 resources :users, only: [:show, :edit, :update, :destroy, :index, :new, :create]

 end
