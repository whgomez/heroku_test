class CreateVisitors < ActiveRecord::Migration[5.0]
  def change
    create_table :visitors do |t|
      t.string :mail
      t.string :name
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
