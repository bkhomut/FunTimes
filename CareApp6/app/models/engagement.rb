class Engagement < ActiveRecord::Base

	belongs_to :user
	has_many :permission
	has_many :condition
	has_many :note

end
