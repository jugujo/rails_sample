class ProductController < ApplicationController
    def index
        @products = Product.all.reverse
        #@boards = Board.where(user_id: current_user.id)
    end
end
