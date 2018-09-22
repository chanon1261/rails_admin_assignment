class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :organization
  has_many :project_users
  has_many :projects, through: :project_users 
    
  validates :email, :presence => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  
  rails_admin do
  
  	list do
  		field :id
  		field :first_name
  		field :last_name
  		field :email
      field :organization

  	end

  	edit do
  		field :first_nam
  		field :last_name
  		field :email
  		field :password
  		field :password_confirmation
      field :organization

  	end
  end

end
