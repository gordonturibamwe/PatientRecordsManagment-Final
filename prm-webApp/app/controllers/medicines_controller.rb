class MedicinesController < ApplicationController
  before_action :set_medicine, only: [:show, :edit, :update, :destroy]

  def index
    @medicines = Medicine.all
  end

  def show
    @patient = Patient.find(params[:patient_id])
    @medicine = Medicine.find(params[:id])
  end

  def new
    @patient = Patient.find(params[:patient_id])
    @medicine = @patient.medicines.build
  end

  def edit
    if current_user.doctor
      @patient = Patient.find(params[:patient_id])
      @medicine = @patient.medicines.find_by(params[:id])
    else
      @patient = Patient.find(params[:patient_id])
      redirect_to patient_path(@patient)
    end
  end

  def create
    @patient = Patient.find(params[:patient_id])
    @medicine = @patient.medicines.build(medicine_params)

    respond_to do |format|
      if @medicine.save
        format.html { redirect_to patient_path(@patient), notice: 'Medicine was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @patient = Patient.find(params[:patient_id])
    respond_to do |format|
      if @medicine.update(medicine_params)
        format.html { redirect_to patient_path(@patient), notice: 'Medicine was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @patient = Patient.find(params[:patient_id])
    @medicine.destroy
    respond_to do |format|
      format.html { redirect_to patient_path(@patient), notice: 'Medicine was successfully deleted.' }
    end
  end

  private
    def set_medicine
      @medicine = Medicine.find(params[:id])
    end

    def medicine_params
      params.require(:medicine).permit(:name, :prescription, :gram, :refill, :info, :patient_id)
    end
end
