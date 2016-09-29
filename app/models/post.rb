class Post < ActiveRecord::Base
	belongs_to :user
	belongs_to :post_type, :foreign_key => 'post_type_id'
	belongs_to :language

	has_many :comments



end
