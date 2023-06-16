class School < ApplicationRecord
  belongs_to :archmage
  has_many :mage
  validates :name, presence: true
end
