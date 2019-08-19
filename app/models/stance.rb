class Stance < ApplicationRecord
  belongs_to :politician
  belongs_to :issue
end
