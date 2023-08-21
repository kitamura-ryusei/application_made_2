Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  
  resources :post_images, only: [:new, :index,  :show, :create, :destroy]
  resources :users, only: [:show, :edit, :update]
  
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  
  get 'homes/about' => 'homes#about', as: 'about'
end
