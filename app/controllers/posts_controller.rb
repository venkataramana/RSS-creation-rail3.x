class PostsController < ApplicationController
        def index
                @posts = Post.find(:all, :order=>"created_at DESC")
                respond_to do |format|
                        format.rss { render :layout => false }
                end
        end
        def new
                @post=Post.new
        end
        def create
                @post=Post.new(params[:post])
                if @post.save
                        redirect_to "/posts.rss"
                else
                        render :action=>"new"
                end
        end
end

