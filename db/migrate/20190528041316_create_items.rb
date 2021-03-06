class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :item_id
      t.string :item_name
      t.string :item_brand
      t.bigint :item_model_number, :limit => 10
      t.date :item_purchase_date
      t.integer :present_holder_id
      t.integer :previous_holder_id

      t.timestamps
    end
  end
end
