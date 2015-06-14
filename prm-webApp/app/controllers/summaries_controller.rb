class SummariesController < ApplicationController
  before_action :set_summary, only: [:show, :edit, :update, :destroy]

  def index
    @summaries = Summary.all
  end

  def show
  end

  def new
    @patient = Patient.find(params[:patient_id])
    @summary = @patient.summaries.build
  end

  def edit
    @patient = Patient.find(params[:patient_id])
    @summary = @patient.summaries.find(params[:id])
  end

  def create
    @patient = Patient.find(params[:patient_id])
    @summary = @patient.summaries.build(summary_params)
    respond_to do |format|
      if @summary.save
        format.html { redirect_to patient_path(@patient), notice: 'Summary was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @patient = Patient.find(params[:patient_id])
    respond_to do |format|
      if @summary.update(summary_params)
        format.html { redirect_to patient_path(@patient), notice: 'Patients Notes were successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @patient = Patient.find(params[:patient_id])
    @summary.destroy
    respond_to do |format|
      format.html { redirect_to patient_path(@patient), notice: 'Patients Notes were successfully destroyed.' }
    end
  end

  private
    def set_summary
      @summary = Summary.find(params[:id])
    end

    def summary_params
      params.require(:summary).permit(:notes, :complaint, :patient_id)
    end
end
