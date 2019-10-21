class ProductsController < ApplicationController
    def index
        @products = Product.all.reverse
        #@boards = Board.where(user_id: current_user.id)
    end

    def new
        @product = Product.new
    end

    def create
        # Product.create(name: params[:name], price: params[:price], description: params[:description])
        # redirect_to :products
        Product.create(product_params)
        redirect_to :products
    end

    def show
        @product = Product.find(params[:id])
    end

    private 
    
    def product_params
        params.require(:product).permit(:name, :price, :description)
    end
end
