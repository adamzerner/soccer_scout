class Tournament < ApplicationRecord
  has_many :games, inverse_of: :tournament, dependent: :destroy

  accepts_nested_attributes_for :games, allow_destroy: true
end
