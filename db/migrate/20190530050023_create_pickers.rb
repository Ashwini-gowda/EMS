class CreatePickers < ActiveRecord::Migration[5.2]
  def change
    create_table :pickers do |t|
      t.date :joining_date

      t.timestamps
    end
  end
end
