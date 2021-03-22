class BloggersController < ApplicationController


    def show
        @blogger = Blogger.find(params[:id])
        @most_liked_post_instance = most_liked_post
    end

    def most_liked_post
        likes_array = @blogger.posts.pluck(:likes)
        likes_index = likes_array.find_index(likes_array.max)
        @blogger.posts[likes_index]
        # byebug
    end
 
end
