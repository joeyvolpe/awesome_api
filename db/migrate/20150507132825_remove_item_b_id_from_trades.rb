class RemoveItemBIdFromTrades < ActiveRecord::Migration
  def change
    remove_column :trades, :item_b_id, :string
  end
end
