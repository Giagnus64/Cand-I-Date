class Issue < ApplicationRecord
    has_many :stances
    has_many :politicians, through: :stances
    validates :topic, :approval_statement, :disapproval_statement, presence: true

    def generate_approval_statement 
        approval_statement = self.approval_statement.split(";")
        approval_statement.shuffle.sample
    end

    def generate_disapproval_statement
        disapproval_statement = self.disapproval_statement.split(";")
        disapproval_statement.shuffle.sample
    end
end
