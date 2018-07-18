class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :mail
      t.date :date
      t.string :observation
      t.float :coordinate

      t.timestamps
    end
  end
end
