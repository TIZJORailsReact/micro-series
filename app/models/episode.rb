class Episode < ApplicationRecord
  belongs_to :season
  belongs_to :series

  validates :name, presence: true
  validates :episode_number, presence: true, numericality: { only_integer: true }
end
