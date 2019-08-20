class Follow < ApplicationRecord
  belongs_to :user
  belongs_to :politician
  validates :match, presence: true
  #custom validation to make sure no politician can be on a user

end
