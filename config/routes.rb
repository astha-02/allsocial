Rails.application.routes.draw do
  	get 'users/filter_by_email' => 'users#filter_by_email'
	get 'users/index' => 'users#index'
  
	post 'likes/toggle_comment_like/' => 'likes#toggle_comment_like'
	post 'likes/toggle_post_like/' => 'likes#toggle_post_like'

  get 'comments/create'

  get 'comments/destroy'
  
  devise_for :users
  get 'users/:id' => 'users#show'

  resources :posts, only: [:index, :create, :destroy]
  resources :comments, only: [:create, :destroy]

  root "posts#index"
end
