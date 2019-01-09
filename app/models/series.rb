class Series < ApplicationRecord
  # == Enumerators ============================================================
  enum genre: {
      drama: 0,
      comedy: 1,
      action: 2,
      horror: 3,
      thriller: 4,
      animation: 5
  }, _suffix: :scope

  # == Relations ================================================================
  has_many :seasons
  has_many :episodes
  has_many :likes

  # == Validations ==============================================================
  validates :name, presence: true

  # == Scopes =================================================================
  scope :liked, -> (login) {joins(:likes).where('likes.user = ?', login)}
  scope :recommended, -> (login) do
    liked = liked(login)
    genres, recommended = [], []
    if liked.present?
      liked.each do |series|
        genres << series.genre
      end
      genres.each do |genre|
        series = where(genre: genre)
        recommended << series.delete_if { |x| recommended.include?(x) || liked.include?(x) }.sample
      end
    end
    while recommended.size < 5
      recommended << Series.all.sample
    end
    recommended
  end
end
