class PostType < ActiveRecord::Base
	has_many :posts
	has_many :languages

	accepts_nested_attributes_for :posts


end
