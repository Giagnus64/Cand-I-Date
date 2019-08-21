class Follow < ApplicationRecord
  belongs_to :user
  belongs_to :politician
  # validates :match,c allow_nil: false
  

end
