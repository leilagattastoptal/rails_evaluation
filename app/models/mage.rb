class Mage < ApplicationRecord
  include Visible
  validates :name, presence: true
end
