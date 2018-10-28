class Shelter < ApplicationRecord
    has_many :contributors, through: contributor_shelters
    has_many :contributor_shelters
end
