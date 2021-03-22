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
        byebug
     
    end
    
    def edit
    end
end
