Rails.application.routes.draw do
  get 'home/index'

  # root 'bbs#index'
  root 'home#index'

  # get '/products' => 'products#index'
  # get '/products/new' => 'products#new'
  # post '/products' => 'products#create'
  # get '/products/:id' => 'products#show'

  # resources :products, only: [:index, :new, :create, :show, :edit, :update]
  resources :products
#  post '/product/write' => 'product#write'

  get '/bbs' => 'bbs#index'
  post '/bbs/write' => 'bbs#write'
  post '/bbs/comment' => 'bbs#comment'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
