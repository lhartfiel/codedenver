Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  root 'pages#show', page: 'home'
  # root 'posts#index'

  resources :posts do
    resources :comments
    resources :post_types do
      resources :languages
    end
  end

  # namespace :admin do
  #   devise_for :users
  # end

  namespace :user do
    resources :posts
  end

  get 'users' => 'user/posts#index'

  # resources :users, only: [:index]


  
end
