Rails.application.routes.draw do
  get 'tags/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  resources :brands, only: :create
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  get 'others' => 'posts#others'
  resources :nominee_maps, only: [:create, :destroy]
  resources :nominees do
    get 'posts', to: 'posts#search'
  end
  resources :users do
    resources :jeans
    resource :relationships, only: [:create, :destroy]
    get :followings, on: :member
    get :followers, on: :member
  end
  get 'my_page' => 'users#my_page'
  get 'my_page/edit' => 'users#edit'
  get 'my_page/jeans' => 'jeans#index'
  get 'my_page/jeans/:id' => 'jeans#show', as: 'my_jeans'
  resources :tags do
    get 'posts', to: 'posts#search'
  end

end
