class DropTableOwnerships < ActiveRecord::Migration
  def change
  	drop_table :ownerships
  end
end
