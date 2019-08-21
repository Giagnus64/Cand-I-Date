class Politician < ApplicationRecord
    has_many :stances
    has_many :issues, through: :stances
    has_many :follows
    has_many :users, through: :follows
    validates :first_name, :last_name, :state, :img_url, :party, :chamber, presence: true

    #custom method to make sure this politician hasn't seen this user
    def has_seen(user)
        if self.users.include?(user)
            return true
        else 
            return false
        end
    end
    #concat first_name and Last_Name
    def full_name
        "#{self.first_name} #{self.last_name}"
    end


    #State Array?
    #Party Array?
end