class Follow < ApplicationRecord
  belongs_to :user
  belongs_to :politician
  validates :match, presence: true
  

end
