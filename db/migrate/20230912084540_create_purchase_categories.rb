class CreatePurchaseCategories < ActiveRecord::Migration[7.0]
  def change
    create_join_table :purchases, :categories do |t|
      t.index :purchase_id
      t.index :category_id
      
      t.timestamps
    end
  end
end
