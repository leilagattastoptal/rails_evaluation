class Mage < ApplicationRecord
  include Visible
  has_many :membership
  has_many :school, through: :membership
  validates :name, presence: true
end
