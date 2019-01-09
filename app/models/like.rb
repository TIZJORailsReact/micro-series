class Like < ApplicationRecord
  # == Aliases ================================================================
  alias_attribute :login, :user

  # == Relations ==============================================================
  belongs_to :series

  # == Validations ============================================================
  validates :series, uniqueness: { scope: :user, message: 'already liked' }
end
