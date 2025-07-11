class MakeVehicleCountRequired < ActiveRecord::Migration[8.0]
  def up
    ViolationReport.where(vehicle_count: nil).update_all(vehicle_count: 0)
    change_column_null :violation_reports, :vehicle_count, false
  end

  def down
    change_column_null :violation_reports, :vehicle_count, true
  end
end
