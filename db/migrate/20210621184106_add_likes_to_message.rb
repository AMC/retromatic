class AddLikesToMessage < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :likes, :int
  end
end
