class ChangeTradePendingToInteger < ActiveRecord::Migration
  def change
  	change_column :users, :trade_pending, 'integer USING CAST(trade_pending AS integer)'
  end
end
