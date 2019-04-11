class AddItunesLinkToMicroposts < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :itunes_link, :text
  end
end
