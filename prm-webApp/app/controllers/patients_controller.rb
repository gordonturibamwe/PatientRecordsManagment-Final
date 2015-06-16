class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    if current_user
      if current_user and !current_user.doctor
        @patients = current_user.patient
        if !@patients.nil? then redirect_to patient_path(@patients) end
        else
          @patients = Patient.all
        end
      else
        redirect_to home_index_path
      end
    end

    def show
      @patient = set_patient          # patient id
      @summary = @patient.summaries   # patient id, summary id, patient_id
      @contact = @patient.contact     # patient id, contact id, patient_id
      @medicines = @patient.medicines
    end

    def new
      @patient = current_user.build_patient
    end

    def edit

    end

    def create
      @patient = current_user.build_patient(patient_params)

      respond_to do |format|
        if @patient.save
          format.html { redirect_to patient_path(@patient), notice: 'Your Contact information was successfully created.' }
        else
          format.html { render :new }
        end
      end
    end

    def update
      respond_to do |format|
        if @patient.update(patient_params)
          format.html { redirect_to patient_path(@patient), notice: 'Your Contact information was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      @patient = Patient.find(params[:id])
      @patient.destroy
      respond_to do |format|
        format.html { redirect_to patients_url, notice: 'You have successfully deleted patient.' }
      end
    end

    private
    def set_patient
      @patient = Patient.find(params[:id])
    end

    def patient_params
      params.require(:patient).permit(:fname, :lname, :gender, :dob, :nextofkin, :nextofkinphone, :user_id)
    end

  end
