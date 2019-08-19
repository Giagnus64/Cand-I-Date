class Issue < ApplicationRecord
    has_many :stances
    has_many :politicians, through: :stances
end
