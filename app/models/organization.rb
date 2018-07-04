class Organization < ApplicationRecord
	has_many :projects
	has_many :users
  has_many :users, through: project_users 
  
  validates :name, :presence => true

end

