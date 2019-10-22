class ProductsController < ApplicationController
    before_action :set_target_product, only: %i[show edit update destroy]

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
        product = Product.create(product_params)
        redirect_to product
    end

    def show
        # @product = Product.find(params[:id])
    end

    def edit
        # @product = Product.find(params[:id])
    end

    def update
        # product = Product.find(params[:id])
        @product.update(product_params)

        redirect_to @product
    end

    def destroy
        # product = Product.find(params[:id])
        @product.delete

        redirect_to products_path
    end

    private 
    
    def product_params
        params.require(:product).permit(:name, :price, :description)
    end

    def set_target_product
        @product = Product.find(params[:id])
    end

end
