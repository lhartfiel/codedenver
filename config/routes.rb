Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  root 'pages#show', page: 'home'
  # root 'posts#index'

  resources :posts do
    resources :post_types
    resources :languages
    resources :comments
  end



  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  
end
