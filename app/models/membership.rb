class Membership < ApplicationRecord
  belongs_to :mage
  belongs_to :school
end
