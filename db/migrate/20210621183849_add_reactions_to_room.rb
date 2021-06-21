class AddReactionsToRoom < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :likes, :int
    add_column :rooms, :dislikes, :int
    add_column :rooms, :mehs, :int
  end
end
