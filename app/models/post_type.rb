class PostType < ActiveRecord::Base
	has_many :posts
	# has_many :languages
end
