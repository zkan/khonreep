class CreateViolationReports < ActiveRecord::Migration[8.0]
  def change
    create_table :violation_reports do |t|
      t.integer :vehicle_count
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
