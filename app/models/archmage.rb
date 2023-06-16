class Archmage < ApplicationRecord
  has_many :schools, dependent: :destroy
  
  validates :name, presence: true
  validates :title, uniqueness: true, presence: true, length: { maximum: 50 } 
end
