module Visible
  extend ActiveSupport::Concern

  VALID_ELEMENTAL_POWER = ['Fire', 'Water', 'Earth', 'Air']

  included do
    validates :elemental_power, inclusion: { in: VALID_ELEMENTAL_POWER }
  end
end
