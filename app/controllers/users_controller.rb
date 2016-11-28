class UsersController < ApplicationController
	before_action :find_user
	before_action :find_post

	def index
		@user = User.find(params[:id])
		@posts = current_user.posts.all
	end

	def show
		# @user = current_user
	end

	def follow

	end

	private

	def find_user
		@user = User.find(params[:id])
	end

	def find_post
		@post = Post.find(params[:id])
	end
end
