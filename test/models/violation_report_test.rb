require "test_helper"

class ViolationReportTest < ActiveSupport::TestCase
  test "is valid with vehicle_count" do
    report = ViolationReport.new(vehicle_count: 10)
    assert report.valid?
  end

  test "is invalid without vehicle_count" do
    report = ViolationReport.new
    assert_not report.valid?
    assert_includes report.errors[:vehicle_count], "can't be blank"
  end
end
