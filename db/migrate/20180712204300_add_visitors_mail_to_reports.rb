class AddVisitorsMailToReports < ActiveRecord::Migration[5.0]
  def change
    add_reference :reports, :visitors, foreign_key: true
  end
end
