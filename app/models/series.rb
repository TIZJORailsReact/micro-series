class Series < ApplicationRecord
  has_many :seasons
  has_many :episodes

  validates :name, presence: true
end
