class Project < ActiveRecord::Base

	has_many :evidences
	has_many :tags, through: :evidences

end
