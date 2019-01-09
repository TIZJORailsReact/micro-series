class AddGenreToSeries < ActiveRecord::Migration[5.2]
  def change
    add_column :series, :genre, :integer
  end
end
