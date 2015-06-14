class MedicinesController < ApplicationController
  before_action :set_medicine, only: [:show, :edit, :update, :destroy]

  def index
    @medicines = Medicine.all
  end

  def show
  end

  def new
    @patient = Patient.find(params[:patient_id])
    @medicine = @patient.medicines.build
  end

  def edit
  end

  def create
    @patient = Patient.find(params[:patient_id])
    @medicine = @patient.medicines.build(medicine_params)

    respond_to do |format|
      if @medicine.save
        format.html { redirect_to patients_path, notice: 'Medicine was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @patient = Patient.find(params[:patient_id])
    respond_to do |format|
      if @medicine.update(medicine_params)
        format.html { redirect_to @patients_path, notice: 'Medicine was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @medicine.destroy
    respond_to do |format|
      format.html { redirect_to patients_path, notice: 'Medicine was successfully destroyed.' }
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
