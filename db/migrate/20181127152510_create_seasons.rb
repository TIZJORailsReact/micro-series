class CreateSeasons < ActiveRecord::Migration[5.2]
  def change
    create_table :seasons do |t|
      t.string :name
      t.integer :number
      t.references :series
      t.timestamps
    end
  end
end
