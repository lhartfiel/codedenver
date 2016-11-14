class Post < ActiveRecord::Base
	belongs_to :user
	belongs_to :post_type, foreign_key: :post_type_id
	belongs_to :language

	validates :title, presence: true
	validates :description, presence: true
	validates :post_type_id, presence: true
	validates :language_id, presence: true

	has_many :comments



end
