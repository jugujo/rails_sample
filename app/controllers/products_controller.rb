class ProductsController < ApplicationController
    before_action :set_target_product, only: %i[show edit update destroy]

    def index
        # @products = Product.all.reverse
        @products = Product.page(params[:page]).per(2)
        #@boards = Board.where(user_id: current_user.id)
    end

    def new
        STDOUT.write("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb") 

        # catgories = Category.all
        # @catgories_for_options = Hash.new
        # @catgories_for_options.store("none", "")
        # catgories.each do |category|
        #   @catgories_for_options.store(category.name, category.id)
        # end

        # @category_id = "1"

        @product = Product.new
    end

    def create
        # Product.create(name: params[:name], price: params[:price], description: params[:description])
        # redirect_to :products

        # product = Product.create(product_params)
        # redirect_to product
        @product = Product.new(product_params)
        if @product.save
          flash[:notice] = "製品「#{@product.name}」を登録しました"
          redirect_to @product
        else
          redirect_to :back, flash: {
            product: @product, 
            error_messages: @product.errors.full_messages
          }
        end
    end

    def show
        # @product = Product.find(params[:id])
    end

    def edit
        # @product = Product.find(params[:id])
    end

    def update
        # product = Product.find(params[:id])
        # @product.update(product_params)
        # redirect_to @product

        if @product.update(product_params)
            flash[:notice] = "製品「#{@product.name}」を編集しました"
            redirect_to @product
        else
            redirect_to :back, flash: {
              product: @product,
              error_messages: @product.errors.full_messages
            }
        end
    end

    def destroy
        # product = Product.find(params[:id])
        @product.delete

        # redirect_to products_path
        redirect_to products_path, flash: { notice_alert: "製品「#{@product.name}」が削除されました" }
    end

    private 
    
    def product_params
        params.require(:product).permit(:name, :category_id, :price, :description)
    end

    def set_target_product
        @product = Product.find(params[:id])
    end

end
