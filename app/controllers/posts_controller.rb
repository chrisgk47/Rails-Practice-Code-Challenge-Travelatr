class PostsController < ApplicationController

    def index
        
    end
    
    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(params.require(:post).permit(:title, :content, :blogger_id, :destination_id))
        @post.save
        redirect_to post_path(@post.id)
    end
    
    def edit
    end

end
