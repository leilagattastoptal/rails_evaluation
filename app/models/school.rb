class School < ApplicationRecord
  belongs_to :archmage
  has_many :membership
  has_many :mage, through: :membership
  validates :name, presence: true
end
