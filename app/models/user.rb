class User < ApplicationRecord
    has_secure_password
    has_many :follows, dependent: :destroy
    has_many :politicians, through: :follows
    validates :first_name, :last_name, :email, :password_digest, presence: true
    validates :email, uniqueness: true


    def full_name
        "#{self.first_name} #{self.last_name}" 
    end

    #custom method to make sure this user doesnt see a politician they have already seen
    def has_not_seen
        Politician.all.select do |politician|
            !self.politicians.include?(politician)
        end
    end

    #method to filter out follow instances where match is true
    def swipe_right
        self.follows.all.select do |follow|
            follow.match #returns true if true, returns false if false
        end
    end
    
    #method to filter out follow instances where match is true
    def politician_matches
        self.swipe_right.map do |follow|
            Politician.find(follow.politician_id)
        end
    end
end
