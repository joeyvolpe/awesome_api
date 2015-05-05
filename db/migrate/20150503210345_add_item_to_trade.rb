class AddItemToTrade < ActiveRecord::Migration
  def change
    add_reference :trades, :item, index: true, foreign_key: true
  end
end
