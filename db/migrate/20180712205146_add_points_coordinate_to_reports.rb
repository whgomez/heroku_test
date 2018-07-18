class AddPointsCoordinateToReports < ActiveRecord::Migration[5.0]
  def change
    add_reference :reports, :points, foreign_key: true
  end
end
