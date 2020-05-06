Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root 'post_images#index'
  resourcess :post_images, only: [:new,:create,:index,:show,:destroy] do
  	resource :post_comments, only: [:create,:destroy]
  	resource :favorites, only: [:create,:destroy]
  end
  resources
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
