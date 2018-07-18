class CreateConventions < ActiveRecord::Migration[5.0]
  def change
    create_table :conventions do |t|
      t.string :convention
      t.string :description
      t.binary :image

      t.timestamps
    end
  end
end
