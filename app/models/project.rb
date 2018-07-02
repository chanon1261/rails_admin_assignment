class Project < ApplicationRecord
	belongs_to :organization
	has_many :project_users

end
