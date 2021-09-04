Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'jeans#index'
  resources :brands, only: [:create]
  resources :lots, only: [:create]
  resources :posts
  resources :jeans
  resources :nominee_maps, only: [:create, :destroy]
  resources :nominees do
    get 'posts', to: 'posts#search'
  end
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get :followings, on: :member
    get :followers, on: :member
  end
  get 'my_page' => 'users#show'
  get 'my_page/edit' => 'users#edit'
  resources :tags do
    get 'posts', to: 'posts#search'
  end

end
