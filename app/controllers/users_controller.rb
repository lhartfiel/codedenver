class UsersController < ApplicationController
	
	def index
		@user = User.find(params[:id])
		@posts = current_user.posts.all
	end

	private

	def find_post
		@post = Post.find(params[:id])
	end
end
