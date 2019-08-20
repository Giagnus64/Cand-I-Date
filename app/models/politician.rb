class Politician < ApplicationRecord
    has_many :stances
    has_many :issues, through: :stances
end
