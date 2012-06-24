class Micropost < ActiveRecord::Base
	attr_accessible :content, :user_id

	belongs_to :user

	validates :content, :length => { :minimum => 3, :maximum => 10 }
end
