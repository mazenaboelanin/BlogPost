 class PostsController < ApplicationController

    def index
        
    end

    # adding new post 
    def new 

    end

    def create
        render plain: params[:post].inspect
    end

end
