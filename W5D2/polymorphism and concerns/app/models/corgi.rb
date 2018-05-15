class Corgi < ApplicationRecord
  include toyable
  validates :corgis, presence: true
  has_many: toys, as: :imageable
end
