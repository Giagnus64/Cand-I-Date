class User < ApplicationRecord
    has_secure_password
    has_many :follows, dependent: :destroy
    has_many :politicians, through: :follows
    validates :first_name, :last_name, :email, :password, presence: true
    validates :email, uniqueness: true

    def full_name
        "#{self.first_name} #{self.last_name}" 
    end
end
