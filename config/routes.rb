# == Route Map
#
#                   Prefix Verb   URI Pattern                    Controller#Action
#               home_index GET    /home/index(.:format)          home#index
#                     root GET    /                              home#index
#                 products GET    /products(.:format)            products#index
#                          POST   /products(.:format)            products#create
#              new_product GET    /products/new(.:format)        products#new
#             edit_product GET    /products/:id/edit(.:format)   products#edit
#                  product GET    /products/:id(.:format)        products#show
#                          PATCH  /products/:id(.:format)        products#update
#                          PUT    /products/:id(.:format)        products#update
#                          DELETE /products/:id(.:format)        products#destroy
#                      bbs GET    /bbs(.:format)                 bbs#index
#                bbs_write POST   /bbs/write(.:format)           bbs#write
#              bbs_comment POST   /bbs/comment(.:format)         bbs#comment
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#            user_password PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
#                          POST   /users/password(.:format)      devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#        user_registration PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                          POST   /users(.:format)               devise/registrations#create

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
