class User::PostsController < ApplicationController
	before_action :authenticate_user!
	# before_action :find_user

	def index
		@post_types_learn = PostType.all.where(post_type: "Learn").order('created_at DESC')
		@post_types_create = PostType.all.where(post_type: "Create").order('created_at DESC')
		@posts_learn = current_user.posts.all.where(post_type_id: "1").order('created_at DESC')
		@posts_create = current_user.posts.all.where(post_type_id: "2").order('created_at DESC')
		
	end

	def show
	end

	def edit
	end

	def update
	end

	private

	def find_user
		@user = User.find(params[:id])
	end

	def user_params 
		params.require(:user).permit(:email, :display_name)
	end

	def find_post
		@post = Post.find(params[:post_id])
	end

end
