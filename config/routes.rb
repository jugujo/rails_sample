Rails.application.routes.draw do
  get 'home/index'

  # root 'bbs#index'
  root 'home#index'

  get '/product' => 'product#index'

  
  get '/bbs' => 'bbs#index'
  post 'bbs//write' => 'bbs#write'
  post 'bbs//comment' => 'bbs#comment'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
