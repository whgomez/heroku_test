class CreatePoints < ActiveRecord::Migration[5.0]
  def change
    create_table :points do |t|
      t.float :coordinate
      t.string :convention
      t.string :description

      t.timestamps
    end
  end
end
