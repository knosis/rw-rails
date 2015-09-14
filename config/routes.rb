Rails.application.routes.draw do

  format_json = ->(request) do
    request.format == 'json'
  end

  get 'login' => 'sessions#new'

  post 'login' => 'sessions#create'

  get 'logout' => 'sessions#destroy'

  get 'signup' => 'users#new'

  post 'signup' => 'users#create'

  put 'users/update' => 'users#update'

  get 'profile' => 'users#show'

  get 'categories/:category_id/wins' => 'wins#index'

  get 'wins' => 'wins#index'

  post 'categories/:category_id/wins' => 'wins#create'

  resources :users

  scope constraints: format_json do
    resources :categories do
      resources :wins
    end
  end



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  # get '*path' => 'categories#index'
  root 'categories#index'


end
