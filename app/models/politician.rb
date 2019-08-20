class Politician < ApplicationRecord
    has_many :stances
    has_many :issues, through: :stances
    has_many :follows
    has_many :users, through: :follows
end
