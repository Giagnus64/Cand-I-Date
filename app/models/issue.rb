class Issue < ApplicationRecord
    has_many :stances
    has_many :politicians, through: :stances
    validates :topic, :approval_statement, :disapproval_statement, presence: true
    
end
