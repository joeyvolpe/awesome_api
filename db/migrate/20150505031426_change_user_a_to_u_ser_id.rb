class ChangeUserAToUSerId < ActiveRecord::Migration
  def change
  	rename_column :trades, :user_b_id, :user_id
  end
end
