class Contributor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :shelters, through: :contributor_shelters
  has_many :ideas_for_homeless
  has_many :contributor_shelters
  has_many :personal_story
end
