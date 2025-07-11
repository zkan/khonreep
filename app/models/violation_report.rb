class ViolationReport < ApplicationRecord
  validates :vehicle_count, presence: true
end
