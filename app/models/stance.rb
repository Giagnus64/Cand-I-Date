class Stance < ApplicationRecord
  belongs_to :politician
  belongs_to :issue

  #custom validation to make sure multiple stances arent created for same politician
end
