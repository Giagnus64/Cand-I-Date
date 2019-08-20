class Politician < ApplicationRecord
    has_many :stances
    has_many :issues, through: :stances
    has_many :follows
    has_many :users, through: :follows
    validates :first_name, :last_name, :state, :img_url, :party, :chamber, presence: true

    #custome method to determine if a user has seen this politician>?
    #concat first_name and Last_Name
    #State Array?
    #Party Array?
end