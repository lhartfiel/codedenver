class PostsController < ApplicationController

	before_action :find_post, only: [:show, :edit, :update, :destroy, :learn]
	before_action :authenticate_user!

	def index
		@post_type_id = PostType.find_by(post_type: params[:post_types]).id
		@posts = Post.where(:post_type_id => @post_type_id).order('created_at DESC')
	end

	def show
		
	end

	def new
		@post = current_user.posts.build
		# Map each post_type string to the post_type_id
		@post_types = PostType.all.map{ |p| [p.post_type, p.id] }
		# @languages = Language.all.map{ |l| [l.language, l.id]}
	end

	def create
		@post = current_user.posts.build(post_params)
		@post.post_type_id = params[:post_type_id]
		# @post.language_id = params[:language_id]
		if @post.save
			redirect_to @post
		else
			render 'new'
		end
	end

	def edit
		# Map each post_type string to the post_type_id
		@post_types = PostType.all.map{ |p| [p.post_type, p.id] }
		# @languages = Language.all.map{ |l| [l.language, l.id]}
	end

	def update
		@post.post_type_id = params[:post_type_id]
		# @post.language_id = params[:language_id]
		if @post.update(post_params)
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
	end


	private	

	def post_params 
		params.require(:post).permit(:title, :description, :user_id, :post_type_id, :comment_id, :language_id)
	end

	def find_post
		@post = Post.find(params[:id])
	end



end
