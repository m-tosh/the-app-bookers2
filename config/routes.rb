Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  resources :users, only: [:show, :edit, :update]
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
end