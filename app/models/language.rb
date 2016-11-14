class Language < ActiveRecord::Base
	has_many :posts

	belongs_to :post_type
end
