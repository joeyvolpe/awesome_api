class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.integer :user_a_id
      t.integer :item_a_id
      t.integer :user_b_id
      t.integer :item_b_id

      t.timestamps null: false
    end
  end
end
