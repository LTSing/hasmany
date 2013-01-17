class CommentsController < ApplicationController
	before_filter :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(params[:comment])
    @comment.user_id = current_user.id

  	if @comment.save
  		redirect_to post_path(@post)   	
  	else
   	
    end
  end


end


