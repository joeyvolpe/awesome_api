class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_image
      t.string :item_name
      t.text :item_description

      t.timestamps null: false
    end
  end
end
