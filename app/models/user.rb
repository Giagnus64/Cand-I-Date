class User < ApplicationRecord
    has_secure_password
    has_many :follows, dependent: :destroy
    has_many :politicians, through: :follows
    validates :first_name, :last_name, :email, :password_digest, presence: true
    validates :email, uniqueness: true


    def full_name
        "#{self.first_name} #{self.last_name}" 
    end
<<<<<<< HEAD
    
=======

    #custom method to make sure this user doesnt see a politician they have already seen
    def has_not_seen
        Politician.all.select do |politician|
            !self.politicians.include?(politician)
        end
    end

>>>>>>> f4e3ec87bfd942a29f3858f1f159aedf5a7df093
    #method to filter out follow instances where match is true
    def swipe_right
        Follow.all.select do |follow|
            follow.match #returns true if true, returns false if false
        end
    end
<<<<<<< HEAD
   #method to filter out follow instances where match is true
    def politician_matches
            self.swipe_right.map do |follow|
                Politician.find(follow.politician_id)
            end
    end
    
=======
    
    #method to filter out follow instances where match is true
    def politician_matches
        self.swipe_right.map do |follow|
            Politician.find(follow.politician_id)
        end
    end
>>>>>>> f4e3ec87bfd942a29f3858f1f159aedf5a7df093
end
