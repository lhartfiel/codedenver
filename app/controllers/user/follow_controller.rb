class User::FollowController < ApplicationController
	# before_action :find_post

	def index
		@posts_follow = current_user.all_following
		@posts = @posts_follow.sort_by{|post| post.post_type }
	end

	def show
	end

	def edit
	end

	def update
	end

	private

end
