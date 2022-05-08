class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def create
        @post= Post.create(title: params[:title], body: params[:body])
        if @post.save
            redirect_to action:'index'
        else
            redirect_to action:'new'
        end
    end

    def new
        @post = Post.new
    end

    def edit
    
    end

    def show
        @post= Post.find_by(id: params[:id])
    end

    def update
    
    end

    def destroy
    
    end
end
