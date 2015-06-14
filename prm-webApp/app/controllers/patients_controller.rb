class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  def index
    @patients = Patient.all
  end

  def show
    @patient = set_patient          # patient id
    @summary = @patient.summaries   # patient id, summary id, patient_id
    @contact = @patient.contact     # patient id, contact id, patient_id

    @s = Summary.find_by(params[:id])
    @medicine = @s.medicines
    @m = Medicine.where(summary_id: @s)
  end

  def new
    @patient = Patient.new
  end

  def edit

  end

  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to patient_path(@patient), notice: 'Patient was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to patient_path(@patient), notice: 'Patient was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'Patient was successfully destroyed.' }
    end
  end

  private
    def set_patient
      @patient = Patient.find(params[:id])
    end

    def patient_params
      params.require(:patient).permit(:fname, :lname, :gender, :dob, :nextofkin, :nextofkinphone)
    end

    def medicine_params
      params.require(:medicine).permit(:name, :gram, :prescription, :refill, :summary_id)
    end
end
