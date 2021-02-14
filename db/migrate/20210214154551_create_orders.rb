class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :order_id
      t.text :order_desc
      t.string :order_total
      t.text :quantity



      t.timestamps
    end
  end
end


