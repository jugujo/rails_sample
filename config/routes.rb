Rails.application.routes.draw do
  root 'bbs#index'
  post '/write' => 'bbs#write'
  post '/comment' => 'bbs#comment'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
