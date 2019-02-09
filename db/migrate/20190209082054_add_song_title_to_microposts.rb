class AddSongTitleToMicroposts < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :song_title, :string
  end
end
