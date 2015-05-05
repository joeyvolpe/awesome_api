class AddTradePendingToUser < ActiveRecord::Migration
  def change
    add_column :users, :trade_pending, :boolean
  end
end
