class CreateItemsTable < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, :null => false
      t.integer :user_id, :null => false
    end
  end
end
