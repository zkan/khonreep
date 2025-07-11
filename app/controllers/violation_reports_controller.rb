class ViolationReportsController < ApplicationController
  before_action :set_violation_report, only: %i[ show edit update destroy ]

  # GET /violation_reports or /violation_reports.json
  def index
    @violation_reports = ViolationReport.all
  end

  # GET /violation_reports/1 or /violation_reports/1.json
  def show
  end

  # GET /violation_reports/new
  def new
    @violation_report = ViolationReport.new
  end

  # GET /violation_reports/1/edit
  def edit
  end

  # POST /violation_reports or /violation_reports.json
  def create
    @violation_report = ViolationReport.new(violation_report_params)

    respond_to do |format|
      if @violation_report.save
        format.html { redirect_to @violation_report, notice: "Violation report was successfully created." }
        format.json { render :show, status: :created, location: @violation_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @violation_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /violation_reports/1 or /violation_reports/1.json
  def update
    respond_to do |format|
      if @violation_report.update(violation_report_params)
        format.html { redirect_to @violation_report, notice: "Violation report was successfully updated." }
        format.json { render :show, status: :ok, location: @violation_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @violation_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /violation_reports/1 or /violation_reports/1.json
  def destroy
    @violation_report.destroy!

    respond_to do |format|
      format.html { redirect_to violation_reports_path, status: :see_other, notice: "Violation report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_violation_report
      @violation_report = ViolationReport.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def violation_report_params
      params.expect(violation_report: [ :vehicle_count, :latitude, :longitude ])
    end
end
