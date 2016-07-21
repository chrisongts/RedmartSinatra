class CreatePurchases < ActiveRecord::Migration
  def change

    create_table :purchases do |t|

      t.integer :product_id
      t.integer :user_id
      t.date :purchase_date
      t.boolean :status

      t.timestamps
    end
  end
end
