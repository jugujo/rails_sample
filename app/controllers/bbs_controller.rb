class BbsController < ApplicationController
    before_action :authenticate_user!, except: :index
    def index
        @boards = Board.all.reverse
        #@boards = Board.where(user_id: current_user.id)
    end
    
    def write
        Board.create(user_id: current_user.id, content: params[:content])
        redirect_to :root
    end
    
    def comment
        Comment.create(user_id: current_user.id, board_id: params[:board_id], msg: params[:msg])
        redirect_to :root
    end
end
