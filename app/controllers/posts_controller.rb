class PostsController < ApplicationController

  def new
  	@post = Post.new
  end

  def create
     @post = Post.new(post_params)
     
     if @post.save
      redirect_to posts_path
    else 'new'
    end
  end


  def show
    @post = Post.find(params[:id])
  end

  def edit
      @post = Post.find(params[:id])
  end

  def update
      @post = Post.find(params[:id])
     
      if @post.update(post_params)
        redirect_to posts_path
      else
        render 'edit'
      end
    end

  def destroy
      @post = Post.find(params[:id])
     
     if @post.destroy
     
       redirect_to posts_path, :notice => "Your post has been deleted successfully."
     else
      raise @post.to_json
    end
  end

  def sweet
      @post = Post.find_by(id: params[:id])
      
      if @post
        @post.sweet = @post.sweet.to_i + 1
        if @post.save
          redirect_to posts_path
        end
      end
  end

  def sour
      @post = Post.find_by(id: params[:id])
      
      if @post
        @post.sour = @post.sour.to_i + 1
        if @post.save
          redirect_to posts_path
        end
      end
  end

  

  def index
    @posts = Post.all.order('created_at desc')
  end

 
  private
    def post_params
      params.require(:post).permit(:body, :sweet)
    end
end