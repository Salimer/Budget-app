class CreateJoinTablePurchasesCategories < ActiveRecord::Migration[7.0]
  def change
    create_join_table :purchases, :categories do |t|
      # t.index [:purchase_id, :category_id]
      # t.index [:category_id, :purchase_id]
    end
  end
end
