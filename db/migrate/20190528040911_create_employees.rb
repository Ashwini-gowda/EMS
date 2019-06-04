class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.integer :eid
      t.string :name
      t.string :gender
      t.date :joining_date
      t.bigint :phone_number, :limit => 10

      t.timestamps
    end
  end
end
