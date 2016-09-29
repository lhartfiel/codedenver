class Post < ActiveRecord::Base
	belongs_to :user
	belongs_to :post_type, foreign_key: :post_type_id
	belongs_to :language

	accepts_nested_attributes_for :post_type

	has_many :comments



end
