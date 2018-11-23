class Episode < ApplicationRecord
  belongs_to :series

  validates :name, presence: true
  validates :season, :episode_number, presence: true, numericality: { only_integer: true }
end
