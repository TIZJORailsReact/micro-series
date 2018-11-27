class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.references :season
      t.integer :episode_number
      t.string :name
      t.references :series
      t.timestamps
    end
  end
end
