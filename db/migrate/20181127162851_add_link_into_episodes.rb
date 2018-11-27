class AddLinkIntoEpisodes < ActiveRecord::Migration[5.2]
  def up
    add_column :episodes, :link, :string
  end

  def down
    remove_column :episodes, :link
  end
end
