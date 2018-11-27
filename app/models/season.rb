class Season < ApplicationRecord
  has_many :episodes
  belongs_to :series

  validates :name, :number, presence: true
end
