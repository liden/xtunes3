class AddPurchaseDateToPurchaseTable < ActiveRecord::Migration
  def change
    add_column :purchases, :purchase_date, :date
  end
end
