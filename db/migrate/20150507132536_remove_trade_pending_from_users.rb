class RemoveTradePendingFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :trade_pending
  end
end
