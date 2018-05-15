class Cat < ApplicationRecord
  include toyable
  validates :name, presence: true

  has_many :toys, as: :imageable
end
