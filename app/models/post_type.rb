class PostType < ActiveRecord::Base
	has_many :posts
	has_many :languages

	validates :post_type, presence: true

	accepts_nested_attributes_for :posts, allow_destroy: true


end
