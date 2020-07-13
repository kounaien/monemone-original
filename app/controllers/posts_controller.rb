class PostsController < ApplicationController

    def top
    end

    def new
        @post = Post.new
    end
    
    def create
        @post = Post.find(params[:id])
        if @post.save
            flash[:succes] = "投稿完了"
            redirect_to @post
        else
            flash[:error] = "投稿できませんでした"
            render 'new'
        end
    end
    
    def index
       @posts = Post.page(params[:page]).per(10).order(created_at: :desc)
    end
    
    def edit
     
    end
    
    def update
        
    end
    
    def destroy
       
    end
    

end
