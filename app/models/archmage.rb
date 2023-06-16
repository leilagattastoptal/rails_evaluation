class Archmage < ApplicationRecord
  validates :name, presence: true
  validates :title, uniqueness: true, presence: true, length: { maximum: 50 } 
end
