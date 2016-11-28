class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   	has_many :posts
   	has_many :comments

   	validates_presence_of :email

   	acts_as_follower
   	# acts_as_followable
end
