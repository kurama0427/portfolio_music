class AddBeginnerToMicropost < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :beginner, :string
  end
end
