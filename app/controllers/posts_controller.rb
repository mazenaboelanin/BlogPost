 class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    # adding new post 
    def new
        @post = Post.new
    end

    def create
        #render plain: params[:post].inspect
        @post = Post.new(post_params)
        # check on validation
        if @post.save
            redirect_to @post # load show view
        else
            render 'new'
        end

    end

    private def post_params
        params.require(:post).permit(:title, :body)
    end

end
