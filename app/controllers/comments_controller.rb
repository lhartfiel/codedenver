class CommentsController < ApplicationController

	before_action :find_post, only: [:create, :edit, :update, :destroy]
	before_action :find_comment, only: [:edit, :update, :destroy]

	def create
		@comment = @post.comments.create(comment_params)
		if user_signed_in?
			@comment.user_id = current_user.id
		
			if @comment.save
				flash[:success] = "Comment created!"
				redirect_to post_path(@post)
			end
		else
			redirect_to new_user_registration_path
		end
	end

	def edit
	end

	def update
		if @comment.update(comment_params)
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
		@comment.destroy
		redirect_to post_path(@post)
	end


	private

	def find_post
		@post = Post.find(params[:post_id])
	end

	def find_comment
		@comment = @post.comments.find(params[:id])
	end

	def comment_params
		params.require(:comment).permit(:description, :user_id, :post_id)
	end


end
