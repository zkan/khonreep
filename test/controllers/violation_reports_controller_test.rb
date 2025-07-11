require "test_helper"

class ViolationReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @violation_report = violation_reports(:one)
  end

  test "should get index" do
    get violation_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_violation_report_url
    assert_response :success
  end

  test "should create violation_report" do
    assert_difference("ViolationReport.count") do
      post violation_reports_url, params: { violation_report: { latitude: @violation_report.latitude, longitude: @violation_report.longitude, vehicle_count: @violation_report.vehicle_count } }
    end

    assert_redirected_to violation_report_url(ViolationReport.last)
  end

  test "should show violation_report" do
    get violation_report_url(@violation_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_violation_report_url(@violation_report)
    assert_response :success
  end

  test "should update violation_report" do
    patch violation_report_url(@violation_report), params: { violation_report: { latitude: @violation_report.latitude, longitude: @violation_report.longitude, vehicle_count: @violation_report.vehicle_count } }
    assert_redirected_to violation_report_url(@violation_report)
  end

  test "should destroy violation_report" do
    assert_difference("ViolationReport.count", -1) do
      delete violation_report_url(@violation_report)
    end

    assert_redirected_to violation_reports_url
  end
end
