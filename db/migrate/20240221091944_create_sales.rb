class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.date :date
      t.string :customer_code
      t.string :name
      t.string :descr
      t.string :doc_type
      t.float :quant
      t.float :ppy
      t.float :value
      t.string :city
      t.string :zip
      t.string :tel
      t.string :afm

      t.timestamps
    end
  end
end
