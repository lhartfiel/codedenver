class User::PostsController < ApplicationController
	before_action :authenticate_user!

	def index
		@post_types_learn = PostType.all.where(post_type: "Learn")
		@post_types_create = PostType.all.where(post_type: "Create")
		@posts_learn = current_user.posts.all.where(post_type_id: "1")
		@posts_create = current_user.posts.all.where(post_type_id: "2")
		# @posts = current_user.posts.all.sort_by{|post| post.post_type }
		
	end

	private

	def user_params 
		params.require(:user).permit(:email, :display_name)
	end

	def find_post
		@post = Post.find(params[:post_id])
	end

end
