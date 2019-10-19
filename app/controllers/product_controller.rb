class ProductController < ApplicationController
    def index
        @products = Product.all.reverse
        #@boards = Board.where(user_id: current_user.id)
    end

    def new
        @product = Product.new
    end

    def write
        Product.create(name: params[:name], price: params[:price], description: params[:description])
        redirect_to :product
    end
end
