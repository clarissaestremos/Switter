class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to posts_path
  end

 	def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    if @comment.destroy
     redirect_to post_path(@post)
    else
      raise @post.to_json
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end

